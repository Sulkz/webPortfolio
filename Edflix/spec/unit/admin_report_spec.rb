ENV["APP_ENV"] = "test"
require_relative "../../app"
require "rspec"


RSpec.describe "Admin report model" do
	describe "When data is invalid" do
		it "adds messages to its errors" do

			# Add type
			type = ReportType.new
			type.load("Beginner")
			type.load("bug")
			type.save_changes

			report = AdminReport.new
			params = {
				user_id: 0,
				description: "some desc",
				subject: "some subject"
			}
			report.load(params, 0)
			report.load(params, type.id)
			report.valid?

			type.delete
			expect(report.errors["report"]).to be_nil #empty

		end
	end
end