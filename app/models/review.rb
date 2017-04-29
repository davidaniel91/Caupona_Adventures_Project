class Review < ApplicationRecord
  belongs_to :restaurant
  validates :commenter, presence: true, length: { minimum: 1 }
  validates :rating, presence: true, format: { with: /[0-9]+(\.[0-9][0-9]?)?/ }
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :review, presence: true, length: { minimum: 25 }
  validates :review, length: { maximum: 255 }
end
