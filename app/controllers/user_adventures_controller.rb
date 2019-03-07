class UserAdventuresController < ApplicationController
  def create
    @adventure = Adventure.find(params[:adventure_id])
    if current_user.add_adventure(@adventure)
      redirect_to current_user
    else
      flash[:alert] = "An error occured."
      render :'adventures/show'
    end
  end

  def destroy
    if current_user.remove_adventure(params[:id])
      redirect_to current_user
    else
      flash[:alert] = "An error occured."
      render :'users/show'
    end
  end
end
