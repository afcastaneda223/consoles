class Category < ApplicationRecord
  has_many :articles
  validates :name, length: { minimum: 2, maximum: 100 }
end
