class CreateShips < ActiveRecord::Migration[7.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :capacity
      t.float :price_per_day
      t.string :ship_class
      t.string :ship_origin
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
