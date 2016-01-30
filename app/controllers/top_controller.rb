class TopController < ApplicationController

    def index
        @users = User.all
        @post = Post.new
        @posts = Post.order("created_at DESC")

        @trainers = Trainer.all

        @answer = Answer.new
        @answers = Answer.all

        @places = Place.all
        @categories = Category.all
        # @categoly = Category.new
        @relationship =Relationship.new
    end




    def search
          @posts = Post.where('title LIKE(?)', "%#{params[:search]}%").limit(20)
    end

     def trainer_search
          @trainers = Place.find_by('city LIKE(?)', "%#{params[:t_search]}%").trainers.limit(20)
    end



end
