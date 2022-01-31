class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :photo, presence: true

  validates :model, presence: true
  validates :license, uniqueness: true
end
