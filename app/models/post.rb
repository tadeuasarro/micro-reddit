class Post < ApplicationRecord
  belongs_to :user, dependent: :destroy, foreign_key: 'user_id'
  validates :title, presence: true, length: { in: 1..30 }
  validates :content, presence: true, length: { in: 1..140 }
  validates :user_id, presence: true
end
