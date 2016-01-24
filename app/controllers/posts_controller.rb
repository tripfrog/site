class PostsController < ApplicationController

def index
    @posts = Post.all
    @post = Post.new
end

def create
  Post.create(post_params)
  redirect_to :root
end


private
def post_params
  params.require(:post).permit(:post, :title)
end


end
