class Ship < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :description, length: { minimum: 10 }
  validates :capacity, numericality: { greater_than: 0 }
  validates :price_per_day, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: {
      name: 'A',
      description: 'B'
    },
    using: {
      tsearch: { prefix: true }
    }

  scope :by_max_price, ->(max_price) { where('price_per_day <= ?', max_price) }
  scope :by_min_rating, ->(min_rating) { where('rating >= ?', min_rating) }
  scope :by_min_capacity, ->(min_capacity) { where('capacity >= ?', min_capacity) }
end
