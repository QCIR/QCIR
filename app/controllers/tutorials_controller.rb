class TutorialsController < ApplicationController
  #before logged

  def index
    @tutorials = Tutorial.all
  end
  def show
    @tutorial = Tutorial.find(params[:id])
  end


  def new
    @tutorial = Tutorial.new
  end
  def create
    @tutorial = current_user.tutorials.new(tutorial_params)
    if @tutorial.save
      redirect_to tutorial_path(@tutorial)
    else
      redirect_to '/'
    end
  end


  def edit
    @tutorial = Tutorial.find(params[:id])
  end

  def update
    @tutorial = Tutorial.find(params[:id])

    if @tutorial.update_attributes(tutorial_params)
      redirect_to '/'
    else
      render action: :edit
    end
  end

  def destroy
    @tutorial = Tutorial.find(params[:id])
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

end


