# These are the admin route controllers
ACCEPTED_USER_TYPES = ["admin"]
before '/admin*' do
  if !ACCEPTED_USER_TYPES.include? session[:user].type
    redirect "/"
    @error = 'You do not have access to this page'
  end
end

get '/admin' do
	$admins = User.where(type: "admin")
	@title = 'Admin'
	erb :admin
end

# Homepage route to display the role form
get "/admin/view-role" do

	user_roles = { 'admin' => ['To suspend and reinstate users', 'view users details'] }

	type = session[:user].type
	if type == "admin" && user_roles.keys.include?("admin")
		role = type
		word = "an"
    capabilities = user_roles[role].join(', ')
		erb :role, locals: { role: role, capabilities: capabilities, word: word }
	else
		erb :"404"
	end
end

get '/admin/suspend-user' do

  type = session[:user].type
	if type == "admin"

    	@title = "Suspend user"
		@suspend = params[:suspend]
		@reinstate = params[:reinstate]
		@ok = params[:ok]

		@users = User.all
		erb :"suspend"
	else
		erb :"404"
	end
end


post '/admin/suspend-user' do
	type = session[:user].type
	if type == "admin" # Verify user identity

		id = params[:id].strip
		suspended = params[:suspended]
		user = User.first(id: id)		
		user.suspended = 1
		user.save_changes
		redirect '/admin/suspend-user?ok=1' # Suspended successfully

	else
		@title = "404"
		halt 404, "Page not found"
	end
end
  
post '/admin/reinstate-user' do

	type = session[:user].type
	if type == "admin" # Verify user identity

		id = params[:id].strip
		suspended = params[:suspended]
		user = User.first(id: id)
		user.suspended = 0
		user.save_changes
		redirect '/admin/suspend-user?ok=2' # Reinstated successfully

	else
		@title = "404"
		halt 404, "Page not found"
	end
	 
end
  

# view all users details
# by JINGYU WANG (NEO)
# 2023-04-30 05:30am
get "/admin/user-details" do
	type = session[:user].type
	if type == "admin"  # Verify user identity

		@title = "user details"
		@edit = params[:edit]
		@delete = params[:delete]
		@ok = params[:ok]

		@users = User.all
		erb :"user-details"

	else
		@title = "404"
		halt 404, "Page not found"
	end
end

# edit user details
# by JINGYU WANG (NEO)
# 2023-04-30 05:30am
post "/admin/edit-user" do
	type = session[:user].type
	if type == "admin" # Verify user identity

		id = params[:id].strip
		email = params[:email].strip
		first_name = params[:first_name].strip
		last_name = params[:last_name].strip
		type = params[:type].strip
		password = params[:password].strip

		user = User.first(id: id)
		user.email = email
		user.first_name = first_name
		user.last_name = last_name
		user.type = type
		user.password = user.encrypt(password) unless password.empty?

		if user.valid? && User::TYPES.include?(type)
			user.save_changes
			redirect '/admin/user-details?ok=1' # Modified successfully
		else
			redirect '/admin/user-details?ok=0' # Modification failed
		end

	else
		@title = "404"
		halt 404, "Page not found"
	end
end

# delete a user
# by JINGYU WANG (NEO)
# 2023-04-30 16:00am
post "/admin/delete-user" do
	type = session[:user].type
	if type == "admin" # Verify user identity

		id = params[:id].strip
		user = User.first(id: id)
		user.delete
		redirect '/admin/user-details?ok=2' # Deleted successfully

	else
		@title = "404"
		halt 404, "Page not found"
	end
end

# add a new user
# by JINGYU WANG (NEO)
# 2023-05-01 00:20
get "/admin/add-user" do
	type = session[:user].type
	if type == "admin" # Verify user identity
		@title = "Add user"
		@ok = params[:ok]
		erb :"add-user"
	else
		@title = "404"
		halt 404, "Page not found"
	end
end

post "/admin/add-user" do
	type = session[:user].type
	if type == "admin" # Verify user identity

		@user = User.new
		@user.load(params)
		@user.type = params[:type]
		@password = params[:password]
		@password_retyped = params[:password_retyped]

		if !@user.valid?
			# "Please fill out this field."
			@error_code = '0'
			erb :"add-user"
		elsif !@user.canRegister?
			# "Sorry, this email is already taken."
			@error_code = '1'
			erb :"add-user"
		elsif params[:password] != params[:password_retyped]
			# "Please make sure your passwords match."
			@error_code = '2'
			erb :"add-user"
		elsif !User::TYPES.include?(params[:type])
			# "Invalid user type."
			@error_code = '3'
			erb :"add-user"

		else
			@user.allocate_id
			@user.save_changes
			redirect "/admin/add-user?ok=true"
		end

	else
		@title = "404"
		halt 404, "Page not found"
	end
end
