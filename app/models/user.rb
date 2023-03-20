class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :nights
  has_many :games
  has_many :bitch_book_entries
  has_many :places
  enum role: { player: 0, manager: 1, admin: 2 }

  has_one_attached :avatar

  # after_commit :add_default_avatar, on: %i[create update]

  private

  # def add_default_avatar
  #   return if avatar.attached?

  #   avatar.attach(
  #     io: File.open(
  #       "https://res.cloudinary.com/dk5glvhr6/image/upload/v1678524968/nb-jb/default-avatar_vub2zz.jpg"
  #     ),
  #     filename: 'default-avatar_vub2zz.jpg',
  #     content_type: 'image/jpg'
  #   )
  # end
end
