class AnswersController < ApplicationController

 def new
    @post = Post.find(params[:post_id])
    @answer = Answer.new
    @answer.post_id = @post.id
 end

 def create
    @answer = Answer.create(answer_params)
      redirect_to :root and return
 end


 private
     def answer_params
      if user_signed_in?
      params.require(:answer).permit(:answer, :post_id).merge(user_id: current_user.id)

      elsif trainer_signed_in?
      params.require(:answer).permit(:answer, :post_id).merge(trainer_id: current_trainer.id,)
     end
 end



end
