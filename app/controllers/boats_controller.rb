class BoatsController < ApplicationController
  def index
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
