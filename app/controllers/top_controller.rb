class TopController < ApplicationController

    def index
        @users = User.all
        @post = Post.new
        @posts = Post.order("created_at DESC")

        @trainers = Trainer.all

        @answer = Answer.new
        @answers = Answer.all
        # @categoly = Category.new



    end

    def search
          @posts = Post.where('title LIKE(?)', "%#{params[:search]}%").limit(20)
    end




end
