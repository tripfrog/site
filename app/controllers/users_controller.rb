class UsersController < ApplicationController
  def show

    @user = User.find(params[:id])
     @post = Post.new
     @posts = Post.where(user_id: params[:id]).order("created_at DESC")

  end

  def edit
  end

  def update
     current_user.update(update_params)
  end


  private
    def update_params
      params.require(:user).permit(:name, :profile, :avatar, :place_id, :category_id)
    end

end
