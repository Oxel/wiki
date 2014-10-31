class UsersController < ApplicationController

	

	def show
		@user=User.find(params[:id])
		@user_id = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:description)
	end

end