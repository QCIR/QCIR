class StagesController < ApplicationController
  
  def index
    @stages = Stage.all
  end

  def show
    @stage = params_id
  end

  def edit
    @stage = params_id
  end

  def colorize
    color = @stage.tutorial.stages.last.color if @stage.tutorial.stages.last
    color = 0 if color == nil || color == 10
    @stage.color = color + 1
  end

  def create
    @stage = Stage.new(stage_params)
    @stage.tutorial_id = params[:tutorial_id]
    p '!'*200
    p params[:id]
    colorize
    if @stage.save
      redirect_to "/tutorial/#{@stage.tutorial_id}/partial"
    else
      redirect_to "/tutorial/#{@stage.tutorial_id}/partial"
    end
  end

  def update
    @stage = params_id
    if @stage.update_attributes(stage_params)
      redirect_to stages_path(@stage)
    else
      render action: :edit
    end
  end

  def destroy
    @stage = params_id
    if @stage.destroy
      redirect_to stages_path
    else
      render action: :edit
    end
  end

  private
  def params_id
    Stage.find(params[:id])
  end

  def stage_params
    params.require(:stage).permit!
  end
end