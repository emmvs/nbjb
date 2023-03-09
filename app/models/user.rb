class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :nights
  has_many :games
  has_many :bitch_book_entries
  has_many :places

  has_one_attached :avatar

  enum role: { player: 0, manager: 1, admin: 2 }
end
