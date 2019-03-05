class AdventuresController < ApplicationController
  before_action :authorize!

  def index
    if params[:topography] && params[:topography].present?
      @adventures = Adventure.where(topography: params[:topography])
    else
      @adventures = Adventure.all
    end
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
end
