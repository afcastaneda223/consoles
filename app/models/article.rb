class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image 
  acts_as_votable
  validates :title, length: { minimum: 5, maximum: 100 }
  validates :body, length: { maximum: 500, minimum: 10 }
  validates :image, presence: true 
end
