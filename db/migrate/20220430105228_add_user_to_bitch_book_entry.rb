class AddUserToBitchBookEntry < ActiveRecord::Migration[6.1]
  def change
    add_reference :bitch_book_entries, :user, null: false, foreign_key: true
  end
end
