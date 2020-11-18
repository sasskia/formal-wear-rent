class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :category, inclusion: { in: ["tuxedo", "black tie", "white tie", "gown", "dress", "heels"] }
  validates :gender, inclusion: { in: %w(men women) }
  validates :gender, presence: true
  validates :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :description, presence: true
  validates :size, presence: true
end
