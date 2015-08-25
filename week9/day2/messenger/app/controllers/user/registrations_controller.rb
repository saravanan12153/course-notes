class User::RegistrationsController < ApplicationController

  def create
    user = User.create!(sign_up_params)
    access_token = Doorkeeper::AccessToken.create!(:application_id => 1, :resource_owner_id => user.id)
    render :json => {:user => user, :access_token => access_token}
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
