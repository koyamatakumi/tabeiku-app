class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @restaurants = @user.restaurants
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  private

  def user_params
    params.require(:user).permit(:nickname, :email,:password,:password_confirmation,:age_id,:gender_id,:taste,:profile)
  end

end
