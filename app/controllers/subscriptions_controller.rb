class SubscriptionsController < ApplicationController

	def new
		@subscription = current_user.build_subscription
	end

	def create
		@subscription = current_user.build_subscription(subscription_params)
		if @subscription.save_with_payment
			redirect_to root_path, :notice => "Thank you for subscribing!"
		else
			render :new
		end
	end

	def show
		@subscription = Subscription.find(params[:id])
	end

	private
		
		def subscription_params
			params.require(:subscription).permit(:email, :card_number, :card_code, :card_month, :plan_id)
		end

		def plan_params
			params.require(:subscription).permit(:plan_id)
		end

		

end
