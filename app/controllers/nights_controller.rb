# app/controllers/nights_controller.rb

class NightsController < ApplicationController
  before_action :set_night, only: %i[show edit update destroy]

  def index
    @nights = Night.all
  end

  def new
    @night = Night.new
  end

  def create
    @night = Night.new(night_params)
    @night.user = current_user
    if @night.save!
      redirect_to nights_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @night.update(night_params)
    redirect_to night_path(@night)
  end

  def destroy
    @night.destroy
    redirect_to nights_path
  end

  private

  def set_night
    @night = Night.find(params[:id])
  end

  def night_params
    params.require(:night).permit(:start_time, :end_time, :user, :place_id, :title)
  end
end
