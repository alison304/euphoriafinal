class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :model, :color, presence: true
  validates :license, uniqueness: true
  has_many :bookings
end
