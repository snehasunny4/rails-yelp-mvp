class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    redirect_to
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
  end

private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
