class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many_attached :photos
  validates :photos, presence: true
  validates :name, presence: true
  validates :name, length: { maximum: 50 }
  validates :category, inclusion: { in: ["tuxedo", "black tie", "white tie", "gown", "dress", "heels"] }
  validates :gender, inclusion: { in: %w(men women) }
  validates :gender, presence: true
  validates :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :description, presence: true
  validates :size, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
