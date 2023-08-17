class ShipsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

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

  def new
    @ship = Ship.new
  end

  def create
    @ship = Ship.new(ship_params)
    @ship.user_id = current_user.id
    if @ship.save
      redirect_to ships_path
    else
      # raise
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ship_params
    params.require(:ship).permit(:name, :description, :capacity, :price_per_day, :rating, :body, photos: [])
  end

end
