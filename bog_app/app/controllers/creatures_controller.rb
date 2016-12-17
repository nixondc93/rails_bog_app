class CreaturesController < ApplicationController


  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.new(creature_params)
    redirect_to creature_path(creature) if creature.save
  end

  def show
    id = params[:id]
    @creature = Creature.find_by_id(id)
  end

  def edit
    id = params[:id]
    @creature = Creature.find_by_id(id)
  end

  def update
    id = params[:id]
    Creature.find_by_id(id).update_attributes(creature_params)
    redirect_to root_path
  end

  def destroy
    id = params[:id]
    Creature.find_by_id(id).delete
    redirect_to root_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end
end
