class Restaurant < ApplicationRecord
validates :Restaurant, presence: true, length: { minimum: 5 }
validates :Restaurant, length: { maximum: 100 }
 validates :description, presence: true, length: { minimum: 10 }
 validates :description, length: { maximum: 10000 }
 validates :rating, presence: true, format: {with: /[0-9]+(\.[0-9][0-9]?)?/}
 validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
