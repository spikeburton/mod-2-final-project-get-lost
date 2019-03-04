class UsersController < ApplicationController
  def new
    @user = User.new
    render :signup
  end

  def create
    @user = User.new(user_params)
    if @user && @user.valid?
      @user.save
      session[:user_id] = @user.id
      # binding.pry
      redirect_to user_path(@user)
    else
      # binding.pry
      render :signup
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :first_name, :last_name,
      :email, :address, :city, :zipcode, :state)
  end
end
