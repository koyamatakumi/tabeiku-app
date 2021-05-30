class RestaurantsController < ApplicationController
  before_action :restaurant_set, only: [:edit, :update,:destroy]

  def index
    # binding.pry
     @restaurants = Restaurant.includes(:user).order("created_at DESC")
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

  def edit
    return redirect_to root_path if current_user.id != @restaurant.user.id
  end
  
  def update
    @restaurant.update(restaurant_params) if current_user.id == @restaurant.user.id
    return redirect_to root_path if @restaurant.valid?
    render 'edit'
  end

  def destroy
    if @restaurant.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:restaurant,:time_zone_id,:category_id,:close_time_id,:gaibu_net,:memo,).merge(user_id: current_user.id)
  end

  def restaurant_set
    @restaurant = Restaurant.find(params[:id])
  end

end
