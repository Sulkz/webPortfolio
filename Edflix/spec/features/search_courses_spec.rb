require_relative "../spec_helper"

RSpec.describe do
  describe "GET /courses" do

		context "Upon searching for a course" do
			it "displays a list of matching courses" do

				add_test_user("moddy", "mcmodder", "modemail@gmail.com", "testtest", "moderator")
				add_test_course("test course", "a course about tests", "modemail@gmail.com")

				visit "/courses"
				fill_in "name", with: "test course"
				click_button "Search"
				expect(page).to have_content "test course"
				expect(page).to have_content "a course about tests"
				clear_database

			end
		end

		context "Upon searching for a non-existant course" do
			it "displays nothing" do
				
				add_test_user("moddy", "mcmodder", "modemail", "testtest", "moderator")
				add_test_course("test course", "a course about tests", "modemail")

				visit "/courses"
				fill_in "name", with: "this course does not exist"
				click_button "Search"

				expect(page).not_to have_content "test course"
				expect(page).not_to have_content "a course about tests"
				clear_database

			end
		end

		context "Upon searching for nothing" do
			it "displays all courses, since nothing was searched for" do

				add_test_user("moddy", "mcmodder", "modemail", "testtest", "moderator")
				add_test_course("test course A", "a course about tests", "modemail")
				add_test_course("test course B", "another course about some tests", "modemail")

				visit "/courses"
				# no fill_in
				click_button "Search"

				expect(page).to have_content "test course A"
				expect(page).to have_content "a course about tests"
				expect(page).to have_content "test course B"
				expect(page).to have_content "another course about some tests"
				clear_database

			end
		end

		# Test isnt working, will look at later
		# context "Upon searching for a course, then resetting the search" do
		# 	it "displays all the courses, since the search was reset" do

		# 		add_test_user("moddy", "mcmodder", "modemail", "testtest", "moderator")
		# 		add_test_course("test course A", "a course about tests", "modemail")
		# 		add_test_course("test course B", "another course about some tests", "modemail")

		# 		visit "/courses?name=course A"
		# 		fill_in "name", with: "course A"
		# 		click_button "Search"

		# 		# only have searched course
		# 		expect(page).to have_content "test course A"
		# 		expect(page).not_to have_content "test course B"

		# 		click_button "Reset"

		# 		# have all courses
		# 		expect(page).to have_content "test course A"
		# 		expect(page).to have_content "test course B"

		# 	end
		# end

  end
end

