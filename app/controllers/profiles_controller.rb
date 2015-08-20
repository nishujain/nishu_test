class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.is_verified == false
      redirect_to unverified_number_profiles_path
    else 
     @profile = current_user.profile
    end
  end

  def show
  end

  def unverified_number
  end 

  def verify_number
    user = User.find(current_user.id)
    if user.verification_code == params[:verification_code] 
      user.update(:is_verified=>true)
      redirect_to root_path
    else
      redirect_to :back
    end
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
      params.require(:profile).permit!
      # params.require(:profile).permit(:name,:city,:phone_number,:age,:occupation,:describe_yourself,:sex,:marital_status,:country,:city_of_residence,:zodiac_sign,:birthdate, :lifestyle)
    end
end
