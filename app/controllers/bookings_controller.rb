class BookingsController < ApplicationController
  def my_bookings
    @bookings = current_user.bookings
  end
  def new
    @booking = Booking.new()
    @listing = Listing.find(params[:listing_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = Listing.find(params[:listing_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      flash[:errors] = @booking.errors
      redirect_to "/listings/#{@booking.listing.id}"
    end
  end


  def show
    @booking = Booking.find(params[:id])
    @total_price = total_price(@booking)
  end

  def booking_decline
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: false)
    redirect_to my_listings_path
  end

  def booking_confirm
    @booking = Booking.find(params[:id])
    @booking.update(confirmed: true)
    redirect_to my_listings_path
  end

  def total_price(booking)
    (booking.end_date - booking.start_date).to_i * booking.listing.price_per_night
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:end_date)

  end
end
