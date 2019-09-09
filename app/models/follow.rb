class Follow < ApplicationRecord
  belongs_to :follower, foreign_key: 'follower_id', class_name: 'User'
  belongs_to :following, foreign_key: 'following_id', class_name: 'User'
  include PublicActivity::Model
  tracked owner: Proc.new{ |controller, model| model.follower }
end
