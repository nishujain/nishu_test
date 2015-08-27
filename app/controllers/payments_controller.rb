class PaymentsController < ApplicationController
	def buy_membership_plan
		token = params[:stripeToken]
		token_email = params[:stripeEmail]
		token_type = params[:stripeTokenType]
		plan_type = params[:plan_type]
		plan_price = params[:plan_price].to_i
		
		# Create a Customer
		customer = Stripe::Customer.create(
		  :source => token,
		  :description => "customer"
		)

		# Charge the Customer instead of the card
		charge = Stripe::Charge.create(
		    :amount => plan_price * 100, # in cents
		    :currency => "usd",
		    :customer => customer.id
		)

		# Save the customer ID in your database so you can use it later
		#save_stripe_customer_id(user, customer.id)
		@payment = current_user.payments.new(
			:plan_type => plan_type,
			:plan_price => plan_price,
			:customer_id => customer.id,
			:stripe_token => token,
			:stripe_token_type => token_type,
			:stripe_email => token_email,
			:payment_status => charge.status
			)
		current_user.update(:profile_count=> 0, :plan_type=>plan_type)
		if @payment.save
			redirect_to root_path
		end
	end
end
