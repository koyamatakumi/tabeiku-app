class CommentsController < ApplicationController
  
  def create
    # binding.pry
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.new(comment_params)
    if@comment.save
      redirect_to restaurant_path(@restaurant.id)
    else 
      render "restaurants/show"
    end 

  end

  private

  def comment_params
   params.require(:comment).permit(:comment).merge(user_id: current_user.id,restaurant_id: @restaurant.id)
  end

end