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

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(strong_params)
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to listing_path(@listing.id)
    else
      render :new
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to my_listings_path()
  end

  private

  def strong_params
    params.require(:listing).permit(:name, :category, :gender, :size, :price_per_night, :description)
  end
end
