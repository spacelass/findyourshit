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

  def show
    @user = current_user
    @building = Building.find(params[:id])
    @sorted_bathrooms = @building.bathrooms.sort_by { |a| a.floor }
  end

  private
    def building_params
      params.require(:building).permit(:name, :floors, :avatar, :area_id)
    end


end
