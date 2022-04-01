class CreateNights < ActiveRecord::Migration[6.1]
  def change
    create_table :nights do |t|
      t.date :date
      t.time :time
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
