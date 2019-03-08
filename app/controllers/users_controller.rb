class UsersController < ApplicationController
  before_action :authorize!, except: [:index, :create]
  before_action :logged_in?, only: [:index, :create]

  # FIXME: This is a kinda hacky fix for when a user signs up,
  # fails to complete the last step and is redirected back to signup_username.html.erb
  # if the user tries to reload the page the url is /users
  def index
    redirect_to signup_path
  end

  def create
    @user = User.new(session[:user_attributes])
    @user.attributes = user_params
    if @user && @user.valid?
      @user.save
      session[:user_id] = @user.id
      session.delete :user_attributes
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render :'signup/signup_username'
    end
  end

  def show
    user = User.find(params[:id])
    return head(:forbidden) unless current_user == user
  end

  def edit
    render :settings
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      @errors = ["Invalid update"]
      render :settings
    end
  end

  def destroy
    current_user.destroy
    session.delete :user_id
    redirect_to root_path
  end
end
