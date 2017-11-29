class BathroomsController < ApplicationController
  def show
    @bathroom = Bathroom.find(params[:id])
  end

  def new
    @bathroom = Bathroom.new
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    @bathroom.area_id = Building.find(@bathroom.building_id).area
    if @bathroom.save!
      redirect_to root_path
    end
  end

  private
    def bathroom_params
      params.require(:bathroom).permit(:building_id, :floor, :gender)
    end
end
