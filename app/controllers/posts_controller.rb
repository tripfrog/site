class PostsController < ApplicationController

# def index
#     @posts = Post.all
#     @post = Post.new
# end

def create
  Post.create(post_params)
  redirect_to :root and return
end




private

def post_params
  if user_signed_in?
  params.require(:post).permit(:post, :title, :avatar).merge(user_id: current_user.id)

elsif trainer_signed_in?
   params.require(:post).permit(:post, :title, :avatar).merge(trainer_id: current_trainer.id,)
end
end

end
