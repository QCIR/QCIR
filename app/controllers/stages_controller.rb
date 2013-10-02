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

  def create
    @stage = Stage.new(stage_params)
    if @stage.save
      redirect_to stage_path(@stage)
    else
      render action: :new
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