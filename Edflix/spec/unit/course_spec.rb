ENV["APP_ENV"] = "test"
require_relative "../../app"
require "rspec"

RSpec.describe "Course model" do
	describe "When data is invalid" do
		it "adds messages to its errors" do

			course = Course.new
			params = {
				name: "",
				description: "",
				ranking_id: "4", # invalid id
				trusted: 'nil',
				price: -5.50,
			}
			course.load(params)
			course.valid?

			expect(course.errors["name"]).to contain_exactly("cannot be empty")
			expect(course.errors["description"]).to contain_exactly("cannot be empty")
			expect(course.errors["ranking"]).to contain_exactly("does not exist")
			expect(course.errors["moderator"]).to contain_exactly("not found")
			expect(course.errors["trusted"]).to contain_exactly("must be selected")

		end
	end

	describe "When data is valid" do
		it "has no errors" do

			# Add moderator
			moderator = User.new
			moderator.load({
				first_name: "first", last_name: "last",
				email: "eml@gmail.com", password: "pass"
			})

			# Add ranking
			ranking = Ranking.new
			ranking.load("Beginner")
			ranking.save_changes

			moderator.type = "moderator"
			moderator.save_changes

			course = Course.new
			params = {
				name: "Course name",
				description: "a description",
				moderator_id: moderator.id,
				ranking_id: ranking.id,
				trusted: '1',
				price: 2.50,
			}
			course.load(params)
			course.valid?

			User.last.delete
			Ranking.last.delete

			expect(course.errors).to eq({})

		end
	end

end
