class Tweet < ApplicationRecord
has_many :likes
has_many :like_user, through: :likes, source: :user
end
