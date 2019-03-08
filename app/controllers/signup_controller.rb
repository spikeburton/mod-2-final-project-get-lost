class SignupController < ApplicationController
  def new
    @signup = UserSignup::Base.new
    @user = @signup.user
    render :info_signup
  end
end
