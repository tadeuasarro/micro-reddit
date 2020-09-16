class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 1..30 }
  validates :content, presence: true, length: { in: 1..140 }
  validates :user_id, presence: true
end
