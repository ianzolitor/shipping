class BoatsController < ApplicationController
  def index
      boats = Boat.all
      boats_json = boats.as_json

      boats_json.each_with_index do |boat, index|
          boat[:jobs] = boats[index].jobs
      end

      render json: boats_json
  end

  def show
  end

  def create
    boat=Boat.new(boat_params)
      if boat.save!
        render json: Boat.all
    end
  end

  def update
  end

  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:name,:container_amount,:location,:user_id)

  end
end
