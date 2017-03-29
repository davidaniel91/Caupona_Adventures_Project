class Review < ApplicationRecord
 validates :title, presence: true, length: { minimum: 5 }
 validates :text, presence: true, length: { minimum: 10 }
 validates :rating,presence: true, numericality: {only_decimal: true}
 validates :rating, :numericality => {:greater_than => 0, :less_than_or_equal_to => 5}
end