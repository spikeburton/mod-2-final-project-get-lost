class AdventuresController < ApplicationController
  before_action :authorize!

  def index
    @adventures = Adventure.all
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def add_adventure_to_user
    @adventure = Adventure.find(params[:id])
    if current_user.add_adventure(@adventure)
      redirect_to current_user
    else
      flash[:alert] = "You have already saved this Adventure."
      render :show
    end
  end

  def remove_adventure_from_user
    @adventure = Adventure.find(params[:id])
    # current_user.user_adventures.where
    binding.pry
  end
end
