class BookingsController < ApplicationController
  def my_bookings
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @total_price = total_price(@booking)
  end

  def total_price(booking)
    (booking.end_date - booking.start_date).to_i * booking.listing.price_per_night
  end
end
