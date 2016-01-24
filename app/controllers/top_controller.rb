class TopController < ApplicationController

    def index
      @users = User.all
        @post = Post.new
        @posts = Post.order("created_at DESC")
        # @categoly = Category.new
    end



end
