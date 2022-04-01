class Night < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_many :users
  has_many :games
end
