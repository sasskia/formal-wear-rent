class BookingsController < ApplicationController
  def my_bookings
    @bookings = current_user.bookings
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
end
