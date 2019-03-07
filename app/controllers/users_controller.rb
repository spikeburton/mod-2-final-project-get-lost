class UsersController < ApplicationController
  before_action :authorize!, except: [:index, :new, :create, :validate_info]
  before_action :logged_in?, only: [:index, :new, :create]

  def index
    redirect_to signup_path
  end

  def new
    @signup = UserSignup::Base.new
    @user = @signup.user
    render :info_signup
  end

  def validate_info
    @signup = UserSignup::Info.new(user_params)
    session[:user_attributes] = @signup.user.attributes

    @user = @signup.user
    if @signup.valid?
      render :username_signup
    else
      @errors = @signup.errors.full_messages
      render :info_signup
    end
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
      render :username_signup
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
      render :settings
    end
  end

  def destroy
    current_user.destroy
    session.delete :user_id
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name,
      :email, :address, :city, :zipcode, :state)
  end
end
