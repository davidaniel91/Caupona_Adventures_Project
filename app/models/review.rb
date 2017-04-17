class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, format: {with: /[0-9]+(\.[0-9][0-9]?)?/}
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  end
