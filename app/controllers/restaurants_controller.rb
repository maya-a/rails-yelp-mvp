class RestaurantsController < ApplicationController
  # before_action :find_reataurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
    sum = 0
    length = 0
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.reviews.last.nil?
      @rating = 'no ratings yet'
    else
      @restaurant.reviews.each do |review|
        sum += review.rating
        length += 1
      end
      @rating = sum / length
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  # def find_reataurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
