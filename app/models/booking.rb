class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ship
  validates :start_date, presence: true
  validates :end_date, presence: true

  # validates :end_date, comparison: { greater_than: :start_date, message: "must follow start date." }
  # validates :start_date, comparison: { greater_than: Date.today, message: "must be today or later." }
  def pending?
    status == 'pending'
  end
end
