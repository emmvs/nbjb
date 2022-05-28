class Place < ApplicationRecord
  validates :name, :address, presence: true
  belongs_to :user
  has_many :nights

  def no_of_balls
    @place.barkeeper_rating('no_of_balls')
  end
end
