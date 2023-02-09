class Game < ApplicationRecord
  belongs_to :night
  belongs_to :place
  has_many :players

  def winner
    players.find_by(winner: true)
  end
end
