class AddRatingThreePicturesToShips < ActiveRecord::Migration[7.0]
  def change
    add_column :ships, :rating, :float
    add_column :ships, :picture_1, :string
    add_column :ships, :picture_2, :string
    add_column :ships, :picture_3, :string
  end
end
