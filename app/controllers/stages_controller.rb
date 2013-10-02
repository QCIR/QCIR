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

  private
  def params_id
    Stage.find(params[:id])
  end
end