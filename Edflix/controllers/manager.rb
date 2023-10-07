# These are the manager route controllers
ACCEPTED_USER_TYPES = ["manager"]
before '/manager*' do
  if !ACCEPTED_USER_TYPES.include? session[:user].type
    redirect "/login"
    @error = 'You do not have access to this page'
  end
end

get '/manager' do
  @title = 'Manager'
  @users = User.all
  @courses = session[:user].joined_courses
  @course_names = @courses.map{|course| course.name}
  @suspended = session[:user].suspended

  if @suspended == 0
    @suspended_text = "No"
  else 
    @suspended_text = "Yes"
  end
  erb :manager
end
