class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :username, uniqueness: true, presence: true, length: { in: 2..15 }
  validates :password, presence: true, length: { in: 6..20 }
  validates :email, uniqueness: true, presence: true
end
