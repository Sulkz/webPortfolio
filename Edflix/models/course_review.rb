require 'require_all'
require 'sequel'

require_rel '../db/db'

class CourseReview < Sequel::Model
	def load(params, user_id)
		self.user_id = user_id
		self.rating = params[:rating]
		self.description = params[:description].strip
		self.course_id = params[:course_id]
	end

	def validate
		super    
		errors.add('review', 'must have a user id') if user_id.nil?
		errors.add('review', 'must have a rating') if rating.nil?
		errors.add('review', 'must have a description') if description.nil? || description == ""
		errors.add('review', 'must have a course id') if course_id.nil?

		errors.add('review', 'rating must be between 1 and 100') if rating < 1 || rating > 100
	end
end
