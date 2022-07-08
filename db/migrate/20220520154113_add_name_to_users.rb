class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :role, :integer, default: 0
    add_column :users, :birthday, :date
    add_column :users, :first_game, :date
    add_column :users, :sign, :string
    add_column :users, :favorite_drink, :string
    add_column :users, :lucky_number, :integer
    add_column :users, :bio, :text
    add_column :users, :wins, :integer
    add_column :users, :losses, :integer
  end
end
