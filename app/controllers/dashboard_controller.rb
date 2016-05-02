class DashboardController < ApplicationController
  def index
    @user_interactions = Interaction.where(user_id: current_user.id)
    @recents = @user_interactions.where('updated_at > ?', 24.hours.ago).order(:updated_at)
    @followups = Interaction.where("follow_up_date BETWEEN ? AND ?", Time.now, Time.now+(86400)).order(:updated_at)
  end
end
