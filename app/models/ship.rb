class Ship < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :description, length: { minimum: 10 }
  validates :capacity, numericality: { greater_than: 0 }
  validates :price_per_day, numericality: { greater_than: 0 }
end
