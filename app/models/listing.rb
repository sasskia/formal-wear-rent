class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :category, inclusion: { in: %w(Tuxedo,Black tie,Gown,Dress) }
  validates :gender, inclusion: { in: %w(men,women) }
  validates :gender, presence: true
  validates :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :descitption, presence: true
end
