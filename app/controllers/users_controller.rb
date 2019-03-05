class UsersController < ApplicationController
  before_action :logged_in?, only: [:new, :create]
  before_action :authorize!, except: [:new, :create]

  def index
  end

  def new
    @user = User.new
    render :signup
  end

  def create
    @user = User.new(user_params)
    if @user && @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :signup
    end
  end

  def show
    # binding.pry
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
      render :settings
    end
  end

  def destroy
    current_user.destroy
    session.delete :user_id
    redirect_to signup_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name,
      :email, :address, :city, :zipcode, :state)
  end
end
