class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @hello = "hello"
    @ship = Ship.find(params[:id])
    @booking = Booking.new
  end

  def user_index
    # if current_user.nil?
    #   redirect_to ships_path
    # else
    # @ships = Ship.where(user_id: current_user.id)
    @user = User.find(1)
    @ships = Ship.where(user_id: 1)
    # end
  end

end
