class TutorialsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :owner?, only: [:edit, :update, :destroy]


  def index
    @tutorials = Tutorial.where("moderation = 2").page(params[:page]).per(10)
  end

  def show
    @tutorial = tutorial
    @comment = Comment.new()
  end

  def partial
    @tutorial = tutorial
    @stage = Stage.new()
  end 


  def new
    @tutorial = Tutorial.new
  end
  def create
    @tutorial = current_user.tutorials.new(tutorial_params)
    if @tutorial.save
      redirect_to tutorial_path(@tutorial)
    else
      render action: :new
    end
  end


  def edit
    @tutorial = tutorial
  end

  def update
    @tutorial = tutorial

    if @tutorial.update_attributes(tutorial_params)
      redirect_to tutorial_path(@tutorial)
    else
      render action: :edit
    end
  end

  def destroy
    @tutorial = tutorial
    if @tutorial.destroy
      redirect_to tutorials_path
    else
      render action: :edit
    end
  end

  private

  def tutorial_params
    params.require(:tutorial).permit!
  end

  def tutorial
    Tutorial.find(params[:id])
  end

  def owner?
    @tutorial = tutorial
    redirect_to root_path if @tutorial.user != current_user
  end
end


