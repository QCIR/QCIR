class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.tutorial = params_tutorial
    if @comment.save
      redirect_to tutorial_path(@comment.tutorial)
    else
      redirect_to tutorial_path(@comment.tutorial)
    end
  end

  def sendComment
    p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  end

  def destroy
    @comment = params_id
    if @comment.destroy
      redirect_to '/'
    else
      render action: :edit
    end
  end

  private
  def params_id
    Comment.find(params[:id])
  end

  def params_tutorial
    Tutorial.find(params[:tutorial_id])
  end

  def comment_params
    params.require(:comment).permit!
  end
end