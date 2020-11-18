class Booking < ApplicationRecord
  belongs_to :animal
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  def booking_is_possible?
    if start_date >= end_date
      errors.add(:end_date, 'Your end date must be later than your start date.')
      false
    end
  end

  def start_is_possible?
    if start_date < Date.today
      errors.add(:start_date, " The start date should be equal or superior to today's date, unless you're living in the past!")
      false
    end
  end
end
