class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :post, foreign_key: 'post_id'
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :content, presence: true, length: { minimum: 1, maximum: 140}
end
