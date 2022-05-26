class CreateNights < ActiveRecord::Migration[6.1]
  def change
    create_table :nights do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
