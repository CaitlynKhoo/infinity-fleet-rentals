class AddRatingDetailsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :rating_comment, :text
    add_column :bookings, :rating_booking, :float
  end
end
