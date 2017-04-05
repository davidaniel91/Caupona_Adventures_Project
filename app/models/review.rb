class Review < ApplicationRecord
 validates :title, presence: true, length: { minimum: 5 }
 validates :text, presence: true, length: { minimum: 10 }
 validates :rating, presence: true, format: {with: /[0-9]+(\.[0-9][0-9]?)?/}
 validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end