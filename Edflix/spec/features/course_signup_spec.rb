require_relative "../spec_helper"

RSpec.describe do
  describe "GET /courses" do

    context "Upon joining a course" do
      it "Expect page to say course joined successfully" do

        add_test_user("moddy", "mcmodder", "modemail@gmail.com", "testtest", "moderator")
			  add_test_course("test_course", "a course about tests", "modemail@gmail.com")

				login_as("learner")
        visit "/course"
        click_on "test_course"
        click_button "Join Course"
        expect(page).to have_content "You have joined course"
        visit "/logout"
        clear_database
      end
    end
  end
end
