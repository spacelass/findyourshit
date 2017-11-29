class ReviewsController < ApplicationController

  def new
    @review = Review.new(bathroom_id: params[:bathroom_id])
    @bathroom = Bathroom.find(params[:bathroom_id])

  end
  def create
    @review = Review.create(review_params)
    @review.user_id = current_user.id
    if @review.save!
      redirect_to Bathroom.find(@review.bathroom_id)
    end
  end

  private
    def review_params
      params.require(:review).permit(:rating, :title, :body, :bathroom_id)
    end
end
