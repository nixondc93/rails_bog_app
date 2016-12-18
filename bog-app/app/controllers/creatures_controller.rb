class CreaturesController < ApplicationController


  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find_by_id(id)
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.new(creature_params)
    redirect_to root_path if creature.save
  end

  def edit
    @creature = Creature.find_by_id(id)
  end

  def update
    Creature.find_by_id(id).update_attributes(creature_params)
    redirect_to root_path
  end

  def destroy
    Creature.find_by_id(id).destroy
    redirect_to root_path
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

  def id
    params[:id]
  end


end
