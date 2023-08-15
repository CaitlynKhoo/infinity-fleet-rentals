class ShipsController < ApplicationController
  def show
    @booking = Booking.new
    @ship = Ship.find(params[:id])
  end
end
