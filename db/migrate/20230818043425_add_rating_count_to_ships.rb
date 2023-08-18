class AddRatingCountToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :rating_count, :integer
  end
end
