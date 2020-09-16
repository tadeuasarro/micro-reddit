class User < ApplicationRecord
    has_many :posts
    validates :username, uniqueness: true, presence: true, length: { in: 2..15 }
    validates :password, presence:true, length: { in: 6..20 }
    validates :email, uniqueness: true, presence: true
end
