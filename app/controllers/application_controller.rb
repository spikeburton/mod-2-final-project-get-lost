class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    user_id = session[:user_id]
    user_id && User.find(user_id)
  end

  def authorize!
    redirect_to login_path unless current_user
  end

  def logged_in?
    redirect_to user_path(current_user) if current_user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name,
      :email, :address, :city, :zipcode, :state)
  end
end
