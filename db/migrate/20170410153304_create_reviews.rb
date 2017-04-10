class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :commenter
      t.text :review
      t.decimal :rating
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
