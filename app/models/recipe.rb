class Recipe < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
end