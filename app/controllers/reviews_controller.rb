class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    # @review = Review.new
  end

  def create
    review = Review.new(rev_params)
    restaurant = Restaurant.find(params[:restaurant_id])
    review.restaurant = restaurant
    review.save
    redirect_to restaurant_path(restaurant)
  end

  private
  def rev_params
    params.require(:review).permit(:content, :rating)
  end
end
