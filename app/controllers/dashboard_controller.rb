class DashboardController < ApplicationController
  def index
    @recents = Interaction.all.order("updated_at DESC").limit(10)
  end
end
