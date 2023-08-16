class BookingsController < ApplicationController

  def create
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.ship = @ship
    @booking.user = current_user
    @user = current_user
    if @booking.save
      redirect_to bookings_path(@user)
    else
      render "ships/show", status: :unprocessable_entity
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
