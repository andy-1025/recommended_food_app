class LikesController < ApplicationController
  def create
    @food = Food.find(params[:food_id])
    current_user.likes.create!(food_id: @food.id)
    # current_user.likes.create!(food_id: params[:food_id])
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    @food = Food.find(params[:food_id])
    current_user.likes.find_by(food_id: @food.id).destroy!
    # current_user.likes.find_by(food_id: params[:food_id]).destroy!
    # redirect_back(fallback_location: root_path)
  end
end
