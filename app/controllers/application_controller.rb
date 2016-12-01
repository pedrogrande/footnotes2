class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # if user is logged in, return current_user, else return guest_user
  # before_action :configure_permitted_parameters, if: :devise_controller?
  #
  # protected
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #     user_params.permit({profile: [:first_name, :last_name, :gender]}, { year_groups: [:year_group_id ] }, :email, :password)
  #   end
  # end

end
