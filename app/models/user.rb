class User < ApplicationRecord
  has_many :bookings
  has_many :ships
  validates :email, uniqueness: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
