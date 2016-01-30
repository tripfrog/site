class RelationshipsController < ApplicationController

def create
  # binding.pry
  if user_signed_in?
    @user = current_user
    @user.relationships.create(following_id: params[:id], following_type: params[:type])
    elsif trainer_signed_in?
    @trainer = current_trainer
    @trainer.relationships.create(following_id: params[:id], following_type:params[:type])
    end
    redirect_to :root and return
end

 # private
 #    def following_params
       
 #      params.require(:relationship).permit().merge(follower_id: current_user.id,following_id: params[:id])
 #      elsif trainer_signed_in?
 #        params.require(:relationship).permit().merge(follower_id: current_trainer.id,following_id: params[:id])
 #      end
 #    end

end
