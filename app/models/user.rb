class User < ApplicationRecord
    has_many :likes #多:多
    has_many :like_tweets, through: :likes, source: :tweet #多:多
end
