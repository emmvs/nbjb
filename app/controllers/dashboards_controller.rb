# app/controllers/dashboards_controller.rb

class DashboardsController < ApplicationController
  def dashboard
  end

  def show
    authorize @dashboard # Pundit
  end
end
