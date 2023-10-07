# Define 404 page
# Using 'halt' or No route will automatically call this method
# e.g. "halt 404, "Page not found""
# by JINGYU WANG (NEO)
# 2023-04-30 05:30am
not_found do
  erb :"404"
end
# These are the general route controllers

# define the routes that do not need a login, as this is a much smaller set than routes that require a login
NO_LOGIN_NEEDED_ROUTES = ['/login', '/register', '/courses', '/course', '/pass-reset1'] # will need to update this as we add more routes
before '/*' do
  # This is MIDDLEWARE, it will run before every get/post method

	# If the route requires the user to be logged in
	if !NO_LOGIN_NEEDED_ROUTES.include? request.path_info
		# redirect to login page if the user is not logged in ($user is not defined)
    # TODO: add message informing user they need to login
		redirect "/login" unless session[:logged_in]
	end

	# In any other case, the route will be handeled as normal by the controllers below
end

get '/' do
  # app code
  @title = 'Dashboard'

  # Suggested Courses for users
  @same_tag_courses = Course.find_same_tag_courses(session[:user].id, 5)
  @most_popular_courses = Course.find_most_popular_courses(5)

  erb :index
end

# this is a general login

get '/login' do
  @title = 'Login'
  erb :login
end

post '/login' do
  entered_email = params[:email].strip
  entered_password = params[:password].strip

  # compare password with password in DB
  # if correct password, redirect to dashboard
  # if not, give an error
  user = User.first(email: entered_email)

  if !user.nil? && user.verify(entered_password)
    if user.suspended == 1
      @error = "You have been suspended"
      erb :login
    else
      # marked as logged in
      session[:logged_in] = true
      session[:user] = user
      redirect "/"
    end
  else
    @error = 'email or password is incorrect'
    erb :login
  end
end

# Both get and post "/logout" so you can either visit the page, or click a button to logout
get "/logout" do
	session[:user] = nil
  session[:logged_in] = false
	redirect "/login"
end

post "/logout" do
	session[:user] = nil
  session[:logged_in] = false
	redirect "/login"
end

get '/register' do
  @title = 'Register'
  erb :register
end

post '/register' do
  entered_password = params[:password].strip
  entered_password_retyped = params[:password_retyped].strip

  @user = User.new
  @user.load(params)
  @user.type = 'learner'

  if @user.canRegister?
    if entered_password == entered_password_retyped
      if @user.valid?
        @user.allocate_id
        @user.save_changes
      end
    else
      @user.errors.add('passwords', 'do not match')
    end
  end

  if @user.errors.empty?
    # no problems while trying to register
    erb :"registration-completion"
  else
    # an error occured, so reshow the register page, which will display the error
    erb :register
  end
end

get "/trending-courses" do
  @courses = Course.new.trending
  @title = 'Trending Courses'
  # Need to do other @vars

  erb :"trending-courses"

end


get '/courses' do
  @courses = Course.new.trusted_first(Course.all)
  @tags = Tag.all
  @name_query = params.fetch(:name, '') # define with @ so form can be refilled automatically
  @tag_ids = params.fetch(:tag_ids, [])
  @title = 'Courses'

  @active_courses = Course.where(archived: 0)

  unless @name_query == '' && @tag_ids.empty?
    @tag_ids.map!(&:to_i)
    @courses = Course.new.trusted_first(Course.new.search(@name_query.strip, @tag_ids))
  end

  erb :courses
end

get '/course' do
  @course_id = params[:id]
	@course = Course.first(id: @course_id)
	redirect "/courses" if Course.where(id: @course_id).empty?
  erb :course
end

post '/join-course' do

  @title = 'Join Course'
  user_id = params[:user_id]
  course_id = params[:course_id]

  return "You have already joined this course" if !JoinedCourse.where(user_id: user_id, course_id: course_id).empty?

  joined_course = JoinedCourse.new
  joined_course.load(params)
  joined_course.save_changes

  "You have joined course: " + params[:course_id]
end

get '/report-bug' do
  @title = 'Report Bug'
  erb :"report-bug"
end

post '/report-bug' do
  bug_report = AdminReport.new
	bug_report.load(params, 0)
  if bug_report.valid?
    bug_report.save_changes
    "Bug report successfully made"
	else
  	erb :"report-bug"
	end
end


get '/pass-reset1' do
	entered_email = params[:email]
	new_password = params[:new_password]
	comfirm_password = params[:confirm_password]

	@title = "Reset Password"
	erb :"pass-reset1"
end


post '/pass-reset1' do
	entered_email = params[:email]
	new_password = params[:new_password]
	confirm_password = params[:confirm_password]

	# Check if email is valid and associated with an existing user
	user = User.first(email: entered_email)
	if user.nil?
	  @error = "Invalid email address"
	  return erb :"pass-reset1"
	end

  if new_password != confirm_password
    @error = "Passwords need to match"
    return erb :"pass-reset1"
  end

  if (new_password && confirm_password).empty?
    @error = "Passwords cant be empty"
    return erb :"pass-reset1"
  end

  if (new_password != confirm_password) && (user.nil?)
    @error = "Invalid email address or Passwords need to match"
    return erb :"pass-reset1"
  end

	# Update the user's password
	if user.update_password(new_password, confirm_password)
	  erb :"reset-confirmation"
	else
	  @error = user.error
	  erb :"pass-reset1"
	end
end











