class CreateBitchbooks < ActiveRecord::Migration[6.1]
  def change
    create_table :bitchbooks do |t|
      t.string :topic
      t.string :title
      t.text :text
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
