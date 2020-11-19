class ListingsController < ApplicationController
  #after_filter "save_my_previous_url", only: [:update]

  def index
    if params.has_key?(:gender)
      @search = params[:gender]
      @listings = Listing.where(gender: params[:gender])
    elsif params.has_key?(:category)
      @search = params[:category]
      @listings = Listing.where(category: params[:category])
    # elsif params.has_key?("search") && !params["search"]["name"].strip.empty?
    #   @search = params["search"]["name"].capitalize
    #   listings = Listing.search(params["search"]["name"])
    #   @listings = []
    #     listings.each do |listing|
    #       confirmed_date_ranges = listing.bookings.map { |b| (b.start_date..b.end_date) }
    #       user_date_range = (params["search"]["start_date"].to_date..params["search"]["end_date"].to_date)
    #       array = []
    #       confirmed_date_ranges.each do |range|
    #         if range.overlaps?(user_date_range)
    #           array.push(1)
    #         end
    #       end
    #       @listings.push(listing) if array.empty?
    #     end
    else
      @listings = Listing.all
    end
  end

  def my_listings
    @listings = current_user.listings
  end

  def show
    @listing = Listing.find(params[:id])
    @reviews = @listing.reviews
    @booking = Booking.new
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
    params.require(:listing).permit(:name, :category, :gender, :size, :price_per_night, :description, photos: [])
  end
end
