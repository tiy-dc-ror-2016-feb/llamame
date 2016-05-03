require 'csv'

class StaffReportJob < ActiveJob::Base
  queue_as :default

  def perform(options = {})
    @users = User.all
    # CSV.open("public/reports/staff_report.csv" ,"wb") do |csv|
    CSV.generate(options) do |csv|
      csv << ["Staff Report"]
      csv << ["User", "Email", "Interaction", "Topic", "Medium", "Follow up date", "Interaction creation date"]
      @users.each do |user|
        csv << [user.email]
        user.interactions.each do |interaction|
          csv << [interaction.topic, interaction.medium, interaction.follow_up_date]
        end
      end
    end
  end
end
