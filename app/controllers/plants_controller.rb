class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update]
  
  def index
    @plants = policy_scope(Plant).order(created_at: :desc)
    @plants = @plants.search_by_name_and_latin_name(params[:navsearch]) if params[:navsearch].present?

    @user_plant = UserPlant.new(user: current_user)
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plant.update(plant_params)
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :photo, :last_watered)
  end
end
