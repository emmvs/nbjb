class Place < ApplicationRecord
  validates :name, :address, presence: true
  belongs_to :user
  has_many :nights

  def blank_balls
    8 - barkeeper_rating.to_i
  end
end
