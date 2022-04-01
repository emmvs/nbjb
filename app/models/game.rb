class Game < ApplicationRecord
  belongs_to :user
  belongs_to :night
  belongs_to :place
end
