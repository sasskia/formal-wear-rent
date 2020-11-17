class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end


  def my_listings
    @listings = current_user.listings
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
