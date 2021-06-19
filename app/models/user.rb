class User < ApplicationRecord
  has_many :articles
  acts_as_voter
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def username
    return email.split('@')[0].capitalize
  end
end
