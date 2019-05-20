class RestaurantsController < ApplicationController

  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    if params[:food_type].blank?
      @restaurants = RESTAURANTS
    else
      @category = params[:food_type]
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
    end
  end

  def create
    # TODO
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
