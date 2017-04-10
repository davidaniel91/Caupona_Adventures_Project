class Restaurant < ApplicationRecord
has_many :reviews
validates :name, presence: true, length: { minimum: 5 }
validates :name, length: { maximum: 30 }
validates :location, presence: true, length: {maximum: 30}
validates :description, presence: true, length: { minimum: 50}
validates :description, length: { maximum: 255 }
end
