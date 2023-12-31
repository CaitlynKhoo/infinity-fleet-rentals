class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ships
  has_many :bookings
  has_many :bookings_as_owner, through: :ships, source: :bookings
  has_one_attached :user_img
end
