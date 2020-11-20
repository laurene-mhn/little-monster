class Animal < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  CATEGORIES = ["dragon", "unicorn", "sphinx", "phoenix", "griffin", "pegasus", "other"]
  SIZES = ["XS", "S", "M", "L", "XL", "Really Really Big"]
  POWERS = ["hug", "electric", "fire", "fly", "heal", "teleportation", "hypnosis"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :size, inclusion: { in: SIZES }
  validates :power, presence: true
  # validates :power, inclusion: { in: POWERS }
  validates :name, presence: true, uniqueness: true
  validates :price, :category, :address, presence: true
end
