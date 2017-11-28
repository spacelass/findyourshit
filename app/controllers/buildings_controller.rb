class BuildingsController < ApplicationController
  def new
    @building = Building.new
    @id = 0
  end

  def create
    @building = Building.create(building_params)
    if @building.save!
      redirect_to root_path
    end
  end

  def index
    @buildings = Building.all
  end

  private
    def building_params
      params.require(:building).permit(:name, :floors, :avatar, :area_id)
    end


end
