class Episode < ApplicationRecord
  validates :date, presence:true
  validates :number, presence:true

  has_many :appearances
  has_many :guests, through: :appearances
  has_many :ratings
end
