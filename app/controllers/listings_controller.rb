class ListingsController < ApplicationController
  #after_filter "save_my_previous_url", only: [:update]

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
    redirect_to my_listings_path
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(strong_params)
    #@back_url = session[:my_previous_url]
    redirect_to listing_path(@listing.id)
  end

  private

  # def save_my_previous_url
  #   # session[:previous_url] is a Rails built-in variable to save last url.
  #   session[:my_previous_url] = URI(request.referer || '').path
  # end

  def strong_params
    params.require(:listing).permit(:name, :category, :gender, :size, :price_per_night, :description)
  end
end
