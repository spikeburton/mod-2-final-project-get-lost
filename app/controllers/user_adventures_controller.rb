class UserAdventuresController < ApplicationController

    def destroy
        current_user.remove_adventure(params[:id])
        redirect_to current_user 
    end


end
