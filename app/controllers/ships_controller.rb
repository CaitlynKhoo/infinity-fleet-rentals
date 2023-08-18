class ShipsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @ships = Ship.all
    if params[:q].present?
      @ships = @ships.global_search(params[:q])
    end

    if params[:max_price].present?
      @ships = @ships.where('price_per_day <= ?', params[:max_price].to_i)
    end

    if params[:min_rating].present?
      @ships = @ships.where('rating >= ?', params[:min_rating].to_f)
    end

    if params[:min_capacity].present?
      @ships = @ships.where('capacity >= ?', params[:min_capacity].to_i)
    end

    # If no search parameters are provided, show all ships
    if !params[:q].present? && !params[:max_price].present? && !params[:min_rating].present? && !params[:min_capacity].present?
      @ships = Ship.all
    end
  end

  def update
    @ship = Ship.find(params[:id])
    raise
    if @ship.update(ship_params)
      # redirect_to # up to you...
    else
      # render # where was the booking update form?
    end
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

  private

  def ship_params
    params.require(:ship).permit(:rating)
  end
end
