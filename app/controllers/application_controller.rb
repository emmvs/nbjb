# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[avatar first_name last_name birthday first_game sign favorite_drink lucky_number bio wins losses])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[avatar first_name last_name birthday first_game sign favorite_drink lucky_number bio wins losses])
  end
end
