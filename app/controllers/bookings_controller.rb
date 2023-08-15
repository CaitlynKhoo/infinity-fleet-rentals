class BookingsController < ApplicationController

  def create
    raise
    @ship = Ship.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.ship = @ship
    @booking.user_id =
    if @booking.save
      redirect_to lists_path(@list)
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
