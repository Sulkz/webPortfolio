require_relative "../spec_helper"

RSpec.describe do
  describe "GET /register" do

		context "Upon successful registration" do
			it "displays a confirmation message" do

				visit "/register"
				fill_in "first_name", with: "Homer"
				fill_in "last_name", with: "Simpson"
				fill_in "email", with: "test@gmail.com"
				fill_in "password", with: "testtest"
				fill_in "password_retyped", with: "testtest"
				click_button "Register"

				expect(page).to have_content "Click here to be redirected to the Dashboard"	
				clear_database

			end
		end

		context "When the passwords do not match" do
			it "displays a message informing the user" do

				visit "/register"
				fill_in "first_name", with: "Homer"
				fill_in "last_name", with: "Simpson"
				fill_in "email", with: "test@gmail.com"
				fill_in "password", with: "donuts"
				fill_in "password_retyped", with: "testomctesty"
				click_button "Register"

				expect(page).to have_content "passwords do not match"
				clear_database

			end
		end

		context "When the email is taken" do
			it "displays a message informing the user" do

				add_test_user("Some", "Guy", "test@gmail.com", "somepassword", "learner")

				visit "/register"
				fill_in "first_name", with: "Another"
				fill_in "last_name", with: "Dude"
				fill_in "email", with: "test@gmail.com"
				fill_in "password", with: "testtest"
				fill_in "password_retyped", with: "testtest"
				click_button "Register"

				expect(page).to have_content "email is taken already"
				clear_database

			end
		end

		context "When fields are not filled" do
			it "displays a message informing the user" do

				visit "/register"
				# no fill_in
				click_button "Register"

				expect(page).to have_content "first_name cannot be empty"
				expect(page).to have_content "last_name cannot be empty"
				expect(page).to have_content "email cannot be empty"
				expect(page).to have_content "password cannot be empty"
				clear_database

			end
		end

  end
end

