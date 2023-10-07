# Configure coverage logging
require "simplecov"
SimpleCov.start do
  add_filter "/spec/"
end
SimpleCov.coverage_dir "coverage"

# Ensure we use the test database
ENV["APP_ENV"] = "test"

# load the app
require_relative "../app"

# Configure Capybara
require "capybara/rspec"
Capybara.app = Sinatra::Application

# Configure RSpec
def app
  Sinatra::Application
end
RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods
end

def add_test_user(first_name, last_name, email, password, type)
  visit "/register"
  fill_in "firstname", with: first_name
  fill_in "lastname", with: last_name
  fill_in "email", with: email
  fill_in "password", with: password
  fill_in "password_retyped", with: password
  click_button "Register"

	user = User.last
	user.type = type
	user.save_changes
end

def login_as(type)
	add_test_user("loggy","logger","forlogin@gmail.com","qwerty", type)
	visit "/login"
	fill_in "email", with: "forlogin@gmail.com"
	fill_in "password", with: "qwerty"
	click_button "Login"
end

def add_test_course(name, description, moderator_email, price=0, ranking="Beginner", is_trusted=true)
	login_as("admin")
	visit "/moderator/add-course"
	fill_in "name", with: name
	fill_in "description", with: description
	fill_in "price", with: price
	select moderator_email, from: "moderator-dropdown"
	select ranking, from: "ranking-dropdown"
	select is_trusted ? "Yes" : "No", from: "trusted-dropdown"
	click_button "Add"
	visit "/logout"
end

# clear out the database
def clear_database
	table_names = ["admin_reports", "courses", "report_types", "tags", "course_reviews", "joined_courses", "roles", "users", "course_tags", "rankings", "subscriptions"]
	table_names.each do |table_name|
 		DB.from(table_name).delete
	end

	DB[:rankings].insert([0, "Beginner"])
	DB[:rankings].insert([1, "Intermediate"])
	DB[:rankings].insert([2, "Difficult"])
end

# ensure we're always starting from a clean database
clear_database