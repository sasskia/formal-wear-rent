class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :content, presence: true
  validates :content, length: { minimum: 10, message: "Review is too short, please write more" }
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
  #validates :rating, inclusion: { in: range(0..5).to_a, message: "%{value} is not a valid number, use 0-5" }
end
