class User < ApplicationRecord
  validates :username, presence:true
  validates :password_digest, presence: true

  has_secure_password
  has_many :ratings
end
