# These are the learner route controllers

get "/my-courses" do
	joined_course_ids = JoinedCourse.where(user_id: session[:user].id).map { |course| course.id }
	@courses = Course.where(id: joined_course_ids)
	erb :"my-courses"
end

get "/review-course" do
	course_id = params.fetch(:id, -1)
	redirect "/" if course_id == -1 # if the course id isnt defined in the url params

	erb :"review-course"
end

post "/review-course" do
	$review = CourseReview.new
	$review.load(params, session[:user].id)

	redirect "/review-course?id=#{params[:course_id]}" if !$review.valid?
	$review.save_changes
	"Review made"
end


get '/profile' do
	@title = 'Profile'
	@courses = session[:user].joined_courses
	erb :profile
end
  
  
post '/profile' do
	
	first_name = params[:first_name].strip
	last_name = params[:last_name].strip
	puts first_name

  	session[:user].update_profile(first_name, last_name)
	redirect '/profile'
	  

end
  
get '/contact' do
	@courses = Course.all
	@title = 'Contact'
	erb :"contact"
end
  
post '/contact' do
	@courses = Course.all
	@title = 'Contact'
	redirect '/contact-completion'
end


get '/contact-completion' do
	@title = "contact-completion"
	erb :"contact-completion"
end

get '/mail-sub' do
	@courses = Course.all
	@title = 'Mail Subscription'
	erb :"mail-sub"
end

post '/mail-sub' do
	@title = 'Subscribed'
	erb :"sub-confirmation"
end

get '/reviewed-completion'do
	@title = "Completed review"
	erb :"reviewed-completion"
end

post '/reviewed-completion' do
	@title = 'Reviewed'
	erb :"sub-confirmation"
end
