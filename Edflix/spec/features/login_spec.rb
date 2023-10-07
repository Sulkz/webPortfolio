require_relative "../spec_helper"

RSpec.describe do
  describe "GET /login" do

		context "Upon successful login" do
			it "displays Hi, <email>" do

				add_test_user("first", "last", "test@gmail.com", "testtest", "learner")

				visit "/login"
				fill_in "email", with: "test@gmail.com"
				fill_in "password", with: "testtest"
				click_button "Login"

				expect(page).to have_content "Hi, first"
				clear_database

			end
		end

		context "When the firstname contains a html tag" do
			it "it escapes the characters on the dashboard" do

				add_test_user("<h1>first</h1>", "last", "test@gmail.com", "testtest", "learner")

				visit "/login"
				fill_in "email", with: "test@gmail.com"
				fill_in "password", with: "testtest"
				click_button "Login"

				expect(page).to have_content "Hi, <h1>first</h1>" # as opposed to "Hi, myemail" (where the h1 tags haven't been escaped)
				clear_database

			end
		end

		context "When using incorrect login details" do
			it "tells the user the email or password is incorrect" do

				add_test_user("first", "last", "test@gmail.com", "testtest", "learner")

				visit "/login"
				fill_in "email", with: "incorrectemail@gmail.com"
				fill_in "password", with: "incorrectpassword"
				click_button "Login"

				expect(page).to have_content "email or password is incorrect"
				clear_database

			end
		end

		context "When no form data is entered" do
			it "tells the user the email or password is incorrect" do

				visit "/login"
				fill_in "email", with: "missingpass@gmail.com"
				fill_in "password", with: ""
				click_button "Login"

				expect(page).to have_content "email or password is incorrect"

			end
		end

  end
end

    

