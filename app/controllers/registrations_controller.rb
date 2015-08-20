class RegistrationsController < Devise::RegistrationsController
  
	def create
		super
		@to = params[:user][:mobile_number]
		@from = '+1 415-599-2671'
		@code = rand.to_s[2..5]
		@client = Twilio::REST::Client.new "AC7ddc50cee0b6e24d55ca9fe125d09a61" , "cf35171f7cfc0787636c030bc3eaf2fd"
		@client.account.messages.create({ :from =>@from , :to => @to, :body => "verify your account code is #{@code}."})
		resource.update(:verification_code=>@code)
	end
end 