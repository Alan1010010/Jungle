class Activity < ApplicationRecord
  acts_as_votable

  # def is_liked?(user_id)
  #   activity =
  #   relationship = Follow.find_by(follower_id: id, following_id: user_id)
  #   return true if relationship&.active
  # end
end
