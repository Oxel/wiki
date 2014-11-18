class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< .merge_file_c7x3KM
  	before_action :configure_permitted_parameters, if: :devise_controller?
=======
>>>>>>> .merge_file_bVTwwm

  	def hello
  		render text: "<h1>Hello</h1><p>Welcome home</p>"
  	end
<<<<<<< .merge_file_c7x3KM

  	protected

  	def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) << :name
  	end  	
=======
>>>>>>> .merge_file_bVTwwm
end
