class Review < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1 }
    validates :text, presence: true, length: { minimum: 1 }
    validate :rating, prescence: true, length: { minimum:1 }
    validate :rating, prescence: true, length: { maximum:5 }
end

