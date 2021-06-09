class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  acts_as_votable
end
