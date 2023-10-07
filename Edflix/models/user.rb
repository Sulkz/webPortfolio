require 'require_all'
require 'sequel'
require 'bcrypt'

require_rel '../db/db'

class User < Sequel::Model
  # How to use: "User::TYPES"
  TYPES = ["learner", "moderator", "manager", "admin"].freeze

  # use this along with the `.save_changes` method to add a user to a database
  def load(params)
    self.first_name = params[:first_name].strip
    self.last_name = params[:last_name].strip
    self.email = params[:email].strip
    self.password = encrypt(params[:password].strip)
  end

  def validate
    super

    errors.add('first_name', 'cannot be empty') if first_name == ""
    errors.add('last_name', 'cannot be empty') if last_name == ""
    errors.add('email', 'cannot be empty') if email == ""
    errors.add('password', 'cannot be empty') if BCrypt::Password.new(password) == ''
  end

  def canRegister?
    # email cannot already be in use
    emailsInUse = User.first(email: email)
    if emailsInUse.nil?
      true
    else
      errors.add('email', 'is taken already')
      false
    end
  end

  def encrypt(password)
    BCrypt::Password.create(password)
  end

  def verify(entered_password)
    BCrypt::Password.new(password) == entered_password
  end

  def full_name
    "#{first_name} #{last_name}"
  end

	def joined_courses
		course_ids = JoinedCourse.where(user_id: self.id).map { |course| course.course_id }
		return Course.where([[:id, course_ids]])
	end

  def joined_courses_names
    course_ids = JoinedCourse.where(user_id: self.id).map { |course| course.course_id }
    puts course_ids
    return Course.where([[:id, course_ids]]).map{|course| course.name}
  end

  # Updates first & last name saving the names to database
  def update_profile(first_name, last_name)
    self.first_name = first_name
    self.last_name = last_name
    save_changes
  end

  # works with Forgotten password 
  def update_password(new_password, confirm_password)
    if new_password != confirm_password
      @error = "New password and confirmation password do not match"
      return false
    end
  
    # Encrypt and set the new password
    self.password = encrypt(new_password)
  
    # Save the changes to the database
    if save_changes
      true
    else
      @error = "Failed to update password"
      false
    end
  end

  #allocates an id to the user edditing the database
  def allocate_id
    all_ids = User.all.map(&:id).sort
    next_id = nil
    if all_ids.any?
      cons = all_ids.each_cons(2).detect { |a, b| b > a + 1 }
      next_id = cons.nil? ? all_ids.max + 1 : cons.first + 1
    else
      next_id = 1
    end
    self.id = next_id
  end
end

