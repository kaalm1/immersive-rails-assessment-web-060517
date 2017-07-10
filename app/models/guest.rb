class Guest < ApplicationRecord
  validates :name, presence:true
  validates :occupation, presence:true

  has_many :appearances
  has_many :episodes, through: :appearances

end
