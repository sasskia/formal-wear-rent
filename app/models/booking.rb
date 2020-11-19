class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :start_date, :end_date, presence: true, availability: true

  validate :end_date_after_start_date

  # validate :start_date_not_before_present

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

  def start_date_not_before_present
    return if end_date.blank? || start_date.blank?

    if start_date < Time.now
      errors.add(:start_date, "Start date cannot be in the past")
    end
  end

end
