class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :text
      t.decimal :rating

      t.timestamps
    end
  end
end
