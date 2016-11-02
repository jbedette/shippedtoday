class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    # resource = the current user
    user_path(resource.id)

    puts "RESOURCE:"
    puts resource
  end

end
