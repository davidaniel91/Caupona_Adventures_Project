class Review < ApplicationRecord
 validates :title, presence: true, length: { minimum: 5 }
 validates :text, presence: true, length: { minimum: 10 }
 validates :rating,presence: true, numericality: {only_decimal: true}

end