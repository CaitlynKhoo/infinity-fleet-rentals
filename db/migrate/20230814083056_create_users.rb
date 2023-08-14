class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.float :rating
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
