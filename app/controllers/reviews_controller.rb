class ReviewsController < ApplicationController

  def new
    @listing = Listing.find(params[:listing_id])
    @review = Review.new
    @reviews = Review.all
  end

  def create
    @review = Review.new(strong_params)
    @listing = Listing.find(params[:listing_id])
    @review.listing = @listing
    @review.user = current_user
    @review.save!
    redirect_to listing_path(@listing.id)
  end

  private

  def strong_params
    params.require(:review).permit(:rating, :content)
  end

end
