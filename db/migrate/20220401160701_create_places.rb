class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.integer :asshole_score
      t.integer :barkeeper_rating
      t.integer :dating_rating
      t.integer :bathroom_rating
      t.integer :beer_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
