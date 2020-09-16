class Comment < ApplicationRecord
    belongs_to :post, foreign_key: 'post_id'
    belongs_to :user, foreign_key: 'user_id'
    validates :user_id, presence: true
    validates :body, presence: true, length: { in: 2..150 }
    validates :post_id, presence: true
end
