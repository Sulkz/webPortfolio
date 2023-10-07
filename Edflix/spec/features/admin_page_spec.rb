require_relative "../spec_helper"

RSpec.describe do
  describe "GET /admin" do

    context "Upon logging in as learner" do
      it "expect access not to be given to the admin page" do

        login_as("learner")
        visit '/admin/view-role'
        expect(page).to have_current_path('/')
				visit '/logout'
				clear_database
      end
    end
  end
end
