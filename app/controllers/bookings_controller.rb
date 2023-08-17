class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = current_user.bookings_as_owner
  end

  def create
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.ship = @ship
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "ships/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      # redirect_to # up to you...
    else
      # render # where was the booking update form?
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
