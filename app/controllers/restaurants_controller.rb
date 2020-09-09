class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
    @restaurant = Restaurant.new(restaurant_params)
    restaurant.save
  end
  
  def destroy
    @restaurant.destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

