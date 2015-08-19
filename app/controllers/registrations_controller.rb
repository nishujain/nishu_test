class RegistrationsController < Devise::RegistrationsController
  
	def create
		super
		@client = Twilio::REST::Client.new "AC7ddc50cee0b6e24d55ca9fe125d09a61" , "cf35171f7cfc0787636c030bc3eaf2fd"
		@client.account.messages.create({ :from => '+1 415-599-2671', :to => params[:user][:mobile_number], :body => "Confirm your account"})
	end
end 