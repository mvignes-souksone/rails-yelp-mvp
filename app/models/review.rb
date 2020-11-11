class Review < ApplicationRecord
  RATING = (0..5).to_a
  belongs_to :restaurant
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
  validates_inclusion_of :rating, in: RATING
end
