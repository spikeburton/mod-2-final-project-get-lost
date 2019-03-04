class SessionsController < ApplicationController
  def new
    render :login
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      # binding.pry
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      @message = "username and/or password incorrect"
      render :login
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end
