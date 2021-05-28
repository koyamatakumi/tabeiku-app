class RestaurantsController < ApplicationController
  
  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # binding.pry
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      return redirect_to root_path
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:restaurant,:time_zone_id,:category_id,:close_time_id,:memo,).merge(user_id: current_user.id)
  end

end
