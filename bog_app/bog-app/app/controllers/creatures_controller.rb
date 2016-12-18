class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.new(creature_params)
    redirect_to creatures_path if creature.save
  end

  def show
    @creature = Creature.find_by_id(id)
  end

  def edit
    show
  end

  def update
    Creature.find_by_id(id).update_attributes(creature_params)
    redirect_to creatures_path
  end

  def destroy
    Creature.find_by_id(id).destroy
  end

  private

  def creature_params
    creature_params = params.require(:creature).permit(:name, :description)
  end

  def id
    params[:id]
  end
end
