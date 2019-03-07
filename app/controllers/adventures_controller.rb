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
end
