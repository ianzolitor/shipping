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
  end

  def update
  end

  def destroy
  end
end
