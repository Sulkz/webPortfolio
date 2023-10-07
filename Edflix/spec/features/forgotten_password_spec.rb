require_relative "../spec_helper"

RSpec.describe do
  describe "GET /pass-reset1" do
		context "When password has been forgotten" do
			it "displays Reset your password" do
				add_test_user("test", "user", "testing@gmail.com", "pass", "learner")
				visit "/pass-reset1"
				fill_in "email", with: "testing@gmail.com"
				fill_in "new_password", with: "pass"
				fill_in "confirm_password", with: "pass"
				click_button "Confirm"
				
				expect(page).to have_content "Your password has been reset"
				clear_database
			end
		end

		context "When password details dont match" do
			it "it resets the page allowing for re-entry" do
				add_test_user("test", "user", "testing@gmail.com", "pass", "learner")
				visit "/pass-reset1"
				fill_in "email", with: "testing@gmail.com"
				fill_in "new_password", with: "pass"
				fill_in "confirm_password", with: "passtor"
				click_button "Confirm"

				expect(page).to have_content "Passwords need to match"
				clear_database
			end
		end

		context "When user email doesn't match" do
			it "it resets the page allowing for re-entry" do
				add_test_user("test", "user", "testing@gmail.com", "pass", "learner")
				visit "/pass-reset1"
				fill_in "email", with: "testin5g@gmail.com"
				fill_in "new_password", with: "pass"
				fill_in "confirm_password", with: "pass"
				click_button "Confirm"

				expect(page).to have_content "Invalid email address"
				clear_database
			end
		end
	end
end
