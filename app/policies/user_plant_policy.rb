class UserPlantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    true
  end

  def water_plant?
    record.user == user
  end

  def water_anyway?
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

end
