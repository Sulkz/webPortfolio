ENV["APP_ENV"] = "test"
require_relative "../../app"
require "rspec"

RSpec.describe "Course review model" do
	describe "When data is invalid" do
		it "adds messages to its errors" do

			review = CourseReview.new
			params = {
				rating: 105,
				description: ""
			}
			review.load(params, nil)
			review.valid?

			expect(review.errors["review"]).to contain_exactly(
				"must have a user id",
				"rating must be between 1 and 100",
				"must have a description",
				"must have a course id")

		end
	end

	describe "When data is valid" do
		it "has no errors" do

			review = CourseReview.new
			params = {
				rating: 50,
				description: "good course :)",
				course_id: 22
			}
			review.load(params, 25)
			review.valid?

		end
	end
end