class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :content
      t.references :restaurant, null: false, forein_key: true
      t.integer :rating
      t.timestamps
    end
  end
end
