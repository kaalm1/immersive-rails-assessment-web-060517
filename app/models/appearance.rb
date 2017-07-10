class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  has_many :ratings

end
