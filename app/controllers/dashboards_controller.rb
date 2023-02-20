# app/controllers/dashboards_controller.rb

class DashboardsController < ApplicationController
  def dashboard
    authorize @dashboard # Pundit
  end
end
