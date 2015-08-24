class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def unverified_number
    # @to = params[:phone_no]
    # @from = '+1 415-599-2671'
    # @code = rand.to_s[2..5]
    # client = Twilio::REST::Client.new "AC7ddc50cee0b6e24d55ca9fe125d09a61" , "cf35171f7cfc0787636c030bc3eaf2fd"
    # sent_message = client.account.messages.create({ :from =>@from , :to => @to, :body => "verify your account code is #{@code}."}) 
    # user = current_user.update(:mobile_number=>@to,:verification_code=>@code)
    # if sent_message && user
    #   @messge = "Verification code sent entered number"
    #   respond_to do |format|
    #   format.js
    #   end
    # end
  end 

  def verify_number
  end 

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = current_user.build_profile(profile_params)
    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name,:city,:phone_number,:age,:occupation,:describe_yourself,:sex,:marital_status,:country,:city_of_residence,:zodiac_sign,:birthdate, :lifestyle=>[], :commitment=>[], :sexual_orientation=>[],:physicality=>[])
    end
end
