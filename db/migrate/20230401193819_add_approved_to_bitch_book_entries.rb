class AddApprovedToBitchBookEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :bitch_book_entries, :approved, :boolean, default: false
  end
end
