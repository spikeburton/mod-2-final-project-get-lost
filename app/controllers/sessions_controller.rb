class SessionsController < ApplicationController
  def new
    render :login
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      binding.pry
    else
      @message = "username and/or password incorrect"
      render :login
    end
  end
end
