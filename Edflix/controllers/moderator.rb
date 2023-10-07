# These are the moderator route controllers
ACCEPTED_USER_TYPES = ["moderator","manager", "admin"]

before '/moderator*' do
  if !ACCEPTED_USER_TYPES.include? session[:user].type
    redirect "/login"
    @error = 'You do not have access to this page'
  end
end

get '/moderator' do
	$moderators = User.where(type: "moderator")
	@title = 'Moderator'
	erb :moderator
end

get '/moderator/add-course' do
	# need to verify that the user is a moderator
	$moderators = User.where(type: "moderator")
	$rankings = Ranking.all
	erb :"add-course"
end

post "/moderator/add-course" do

	@title = 'Add Course'
	@course = Course.new
	@course.load(params)
	@course.save_changes if @course.valid?
	erb :"add-course"
end

get "/moderator/view-bug-reports" do

	$moderators = User.where(type: "moderator")
	@title = 'View Bug Reports'
	@admin_reports = AdminReport.all

	erb :"view-bug-reports"
end

get "/moderator/user-details" do
	@title = 'user-details'
	# need to verify that the user is an admin
	type = session[:user].type
	if type == "moderator"
		erb :"user-details"
	else
		erb :"404"
	end
end

get "/moderator/view-role" do

	user_roles = { 'moderator' => ['add courses', 'delete posts'] }
	
	type = session[:user].type
	if type == "moderator" && user_roles.keys.include?("moderator")
		role = type
		word = "a"
    capabilities = user_roles[role].join(', ')
    erb :role, locals: { role: role, capabilities: capabilities, word: word }
	else
		erb :"404"
	end
end