class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to '/'
    else
      render action: :new
    end
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

  def comment_params
    params.require(:comment).permit!
  end
end