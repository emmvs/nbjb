# app/controllers/profiles_controller.rb

class ProfilesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
