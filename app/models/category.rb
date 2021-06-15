class Category < ApplicationRecord
  has_many :articles
  validates :name, length: { minimum: 1, maximum: 100 }
end
