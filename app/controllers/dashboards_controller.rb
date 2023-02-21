# app/controllers/dashboards_controller.rb

class DashboardsController < ApplicationController
  def dashboard
    @nights = Night.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
  end
end
