class UserAdventuresController < ApplicationController

    def create 
        binding.pry
        current_user.add_adventure(params[:id])
        redirect_to current_user
    end

    def destroy
        current_user.remove_adventure(params[:id])
        redirect_to current_user 
    end


end
