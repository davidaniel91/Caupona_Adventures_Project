class Review < ApplicationRecord
    validates :title, presence: true, length: { minimum: 1 }
    validates :text, presence: true, length: { minimum: 1 }
end
