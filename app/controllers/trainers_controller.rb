class TrainersController < ApplicationController
  def show
    @trainer = Trainer.find(params[:id])
     @post = Post.new
        @posts = Post.order("created_at DESC")
  end

  def edit
  end

  def update
     current_trainer.update(update_params)
  end



  private
    def update_params
      params.require(:trainer).permit(:name, :profile, :avatar, :place_id, :category_id)
    end

end
