class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def follow?
    true
  end

  def unfollow?
    true
  end
  def leaderboard?
    true
  end


end
