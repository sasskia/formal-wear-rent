class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

    def my_listings
    @listings = current_user.listings
  end
end
