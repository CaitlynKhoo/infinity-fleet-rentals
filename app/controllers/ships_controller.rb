class ShipsController < ApplicationController

  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
    @booking = Booking.new
  end

end
