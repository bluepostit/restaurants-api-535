class RestaurantPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    user == record.user
  end

  def create?
    !user.nil?
  end

  def destroy?
    user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
