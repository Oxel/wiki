class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
<<<<<<< HEAD
<<<<<<< .merge_file_c7x3KM
  	before_action :configure_permitted_parameters, if: :devise_controller?
=======
>>>>>>> .merge_file_bVTwwm

  	def hello
  		render text: "<h1>Hello</h1><p>Welcome home</p>"
  	end
<<<<<<< .merge_file_c7x3KM
=======
  before_action :configure_permitted_parameters, if: :devise_controller?

  	rescue_from Pundit::NotAuthorizedError do |exception|
      redirect_to root_url, alert: exception.message
    end

>>>>>>> add-roles

  	protected

  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) << :name
  	end  	
=======
>>>>>>> .merge_file_bVTwwm
end
