class BookingsController < ApplicationController

  def index
    @user = current_user
    @today = Date.today
    @bookings = current_user.bookings_as_owner
  end

  def create
    @ship = Ship.find(params[:ship_id])
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.ship = @ship
    @booking.user = current_user
    @booking.rating_done = "F"
    if @booking.save
      redirect_to bookings_path
    else
      render "ships/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.rating_done == "F"
      @booking.ship.rating_count += 1
      @booking.ship.rating = (params[:booking][:rating_booking].to_f +  @booking.ship.rating)/@booking.ship.rating_count
      @booking.rating_done = "Y"
    end
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render "bookings", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :rating_booking, :rating_comment)
  end
end
