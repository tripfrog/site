class TopController < ApplicationController

    def index
      @users = User.all
        @post = Post.new
        @posts = Post.order("created_at DESC")
        @trainers = Trainer.all
         @users = User.all
        # @categoly = Category.new
    end



end
