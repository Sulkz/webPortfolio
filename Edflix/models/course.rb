require 'require_all'
require 'sequel'

require_rel '../db/db'

class Course < Sequel::Model
  def search(name = '', tag_ids = [])
    matching_course_name_ids = []
    matching_course_tag_ids = []

    Course.where(Sequel.like(:name, "%#{name}%")).each do |course|
      matching_course_name_ids.push(course.id)
    end
    CourseTag.all.filter { |course| tag_ids.include?(course.tag_id) }.each do |course|
      matching_course_tag_ids.push(course.course_id)
    end

    matching_courses = Course.all.filter do |course|
      (matching_course_name_ids.include?(course.id) || name == '') &&
        (matching_course_tag_ids.include?(course.id) || tag_ids.empty?)
    end

    # maybe also filter by tags
    matching_courses.sort_by { |string| string.name.size }
  end

  def load(params)
    self.name = params[:name].strip
    self.description = params[:description].strip
    self.moderator_id = params[:moderator_id]
    self.ranking_id = params[:ranking_id]
    self.trusted = params[:trusted].strip
    self.price = params[:price]
    #add trusted course here
  end

  def validate
    super
    moderator = User.where(id: moderator_id, type: 'moderator')

    errors.add('name', 'cannot be empty') if name.empty? || name == ""
    errors.add('description', 'cannot be empty') if description.empty? || description == ""
    errors.add('moderator', 'must be selected') if moderator_id == 'nil'
    errors.add('moderator', 'not found') if moderator.empty? && moderator_id != 'nil'
    errors.add('trusted', 'must be selected') if trusted == 'nil'
    errors.add('price', "must be entered") if price == ''
		errors.add('price', 'cannot be negative') if price < 0
    errors.add('ranking','must be selected') if ranking_id == 'nil'
    errors.add('ranking','does not exist') if Ranking.where(id: ranking_id).empty?
  end

  def ranking
    Ranking.first(id: self.ranking_id)
  end

  def all_average_cohort_size
    total_cohort_size = 0
    Course.all.each do |course|
      total_cohort_size += course.cohort_size
    end
    if Course.all.count == 0
      return 0
    else
      return total_cohort_size / Course.all.count
    end
  end

	def reviews
		return CourseReview.where(course_id: self.id)
	end

  def cohort_size
    course_join_entries = JoinedCourse.where(course_id: self.id)
    return course_join_entries.count
  end

  def all_average_rating
    total_average_ratings = 0;
    Course.all.each do |course|
      total_average_ratings += course.average_rating
    end

    if Course.all.count == 0
      return 0
    else
      return total_average_ratings / Course.all.count
    end
  end

  def average_rating
    reviews = CourseReview.where(course_id: self.id)
    total_rating = 0
    reviews.each do |review|
      total_rating += review.rating
    end

    if reviews.count == 0
      return 0
    else
      return total_rating / reviews.count
    end
  end

  def trending_rating
    course = Course.first(id: self.id)
    relative_average_rating = course.average_rating / course.all_average_rating
    relative_average_cohort = course.cohort_size / course.all_average_cohort_size
    return (relative_average_rating * 0.4) + (relative_average_cohort * 0.6)
  end

  def trending

    all_courses = Course.all
    sort_by_trending_courses = all_courses.sort { |course_a, course_b| course_b.trending_rating <=> course_a.trending_rating }

    return sort_by_trending_courses

  end

  def trusted_first(courses)
    return courses.sort { |course_a, course_b| course_b.trusted <=> course_a.trusted }
  end

  def formatted_price
    # TODO: get price to 2 decimal places
    return self.price
  end

  def self.find_same_tag_courses(user_id, num)
    tag_ids = []
    same_tag_course_ids = []
    same_tag_courses = []
    selected_course_ids = JoinedCourse.where(user_id: user_id).map(&:course_id)
    selected_course_ids.each do |course_id|
      tag_ids.concat(CourseTag.where(course_id: course_id).map(&:tag_id))
    end

    tag_ids.each do |tag_id|
      same_tag_course_ids.concat(CourseTag.where(tag_id: tag_id).map(&:course_id))
    end

    same_tag_course_ids = same_tag_course_ids.group_by(&:itself).sort_by{ |k, v| -v.size }.map(&:first).uniq
    same_tag_course_ids = same_tag_course_ids - selected_course_ids
    same_tag_course_ids.each do |course_id|
      same_tag_courses << Course.first(id: course_id)
    end

    if same_tag_courses.size < num
      same_tag_courses.concat(Course.all.sample(num - same_tag_courses.size))
    end

    same_tag_courses
  end

  def self.find_most_popular_courses(num)
    most_popular_courses = []
    list = JoinedCourse.all.map(&:course_id)
    frequency = list.each_with_object(Hash.new(0)) { |value, counts| counts[value] += 1 }
    most_common_values = frequency.sort_by { |_key, count| -count }.first(num).map(&:first)
    most_common_values.each do |id|
      if Course.first(id: id).nil?
        next
      end
      most_popular_courses << Course.first(id: id)
    end

    if most_popular_courses.size < num
      orther_courses = Course.all.map(&:id) - most_common_values
      orther_courses.sample(1).each do |id|
        most_popular_courses << Course.first(id: id)
      end
    end

    most_popular_courses
  end
end
