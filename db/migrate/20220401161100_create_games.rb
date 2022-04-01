class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.interval :duration
      t.string :winner
      t.string :looser
      t.references :user, null: false, foreign_key: true
      t.references :night, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
