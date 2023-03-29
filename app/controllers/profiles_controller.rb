# app/controllers/profiles_controller.rb

class ProfilesController < ApplicationController
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
