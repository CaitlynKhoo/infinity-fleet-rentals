class AddRatingDoneToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :rating_done, :string
  end
end
