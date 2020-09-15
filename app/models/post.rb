class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  validates :user_id, presence: true
  validates :content, presence: true, length: { minimum: 1, maximum: 140 }
end
