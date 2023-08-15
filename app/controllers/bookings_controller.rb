class BookingsController < ApplicationController
  def create
    @booking =Booking.new(booking_params)
  end
end


private

  def booking_params
  end
