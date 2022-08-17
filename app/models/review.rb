class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true, greater_than: -1, less_than: 6 }, presence: true
  validates :content, presence: true

end
