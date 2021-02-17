class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    find_restaurant
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render(:new)
    end
  end

  def edit
    find_restaurant
  end

  def update
    find_restaurant
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    find_restaurant
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
