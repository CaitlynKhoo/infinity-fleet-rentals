class Owner::BookingsController < ApplicationController
  # before_action :authenticate_user!
  def index
    # @user = current_user
    @bookings = current_user.bookings_as_owner
  end
end
