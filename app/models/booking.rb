class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ship
  validates :start_date, presence: true
  validates :end_date, presence: true
end
