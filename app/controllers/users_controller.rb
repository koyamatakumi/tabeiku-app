class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @restaurants = @user.restaurants
  end

end
