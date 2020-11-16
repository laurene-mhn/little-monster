class Animal < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["demon", "dragon", "pokemon", "doll", "goblins", "fairy", "cartoon"]
  SIZES = ["XS", "S", "M", "L", "XL", "Really Really Big"]
  POWERS = ["hug", "electric", "fire", "fly"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :size, inclusion: { in: SIZES }
  validates :power, inclusion: { in: POWERS }
  validates :name, presence: true, uniqueness: true
  validates :price, :category, :location, presence: true
end

# user1 = User.create!(email: "toto@set.fr", password: "abcdef", password_confirmation: "abcdef")
# animal = Animal.new(name: "Spiro", price:100, user_id:1)
