class SignupController < ApplicationController
  before_action :logged_in?

  def new
    @signup = UserSignup::Base.new
    @user = @signup.user
    render :signup_info
  end

  def validate
    @signup = UserSignup::Info.new(user_params)
    session[:user_attributes] = @signup.user.attributes

    @user = @signup.user
    if @signup.valid?
      render :signup_username
    else
      @errors = @signup.errors.full_messages
      render :signup_info
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name,
      :email, :address, :city, :zipcode, :state)
  end
end
