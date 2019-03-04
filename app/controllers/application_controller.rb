class ApplicationController < ActionController::Base
  def current_user
    user_id = session[:user_id]
    user_id && User.find(user_id)
  end
end
