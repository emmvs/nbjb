class Place < ApplicationRecord
  validates :name, :address, presence: true
  belongs_to :user
  has_many :nights

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def blank_balls
    8 - barkeeper_rating.to_i
  end
end
