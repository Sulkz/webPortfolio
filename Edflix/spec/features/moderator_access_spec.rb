require_relative "../spec_helper"

RSpec.describe do
  describe 'GET /moderator' do
    context 'Upon learner attempting to visit moderator page' do

      it 'redirects learner to login page as they do not have access' do
        login_as("learner")
        visit '/moderator'
        expect(page).to have_current_path('/login')
      end
    end
  end
end
