class Place < ApplicationRecord
  validates :name, :address, presence: true
  belongs_to :user
  has_many :nights
end
