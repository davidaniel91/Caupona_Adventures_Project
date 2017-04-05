class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :Restaurant
      t.text :description
      t.decimal :rating

      t.timestamps
    end
  end
end
