class CreateBitchBookEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :bitch_book_entries do |t|
      t.string :topic
      t.string :title
      t.text :text
      t.integer :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
