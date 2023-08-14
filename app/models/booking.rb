class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ship
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates_numericality_of :end_date, :greater_than => Proc.new { |booking| booking.start_date }
end
