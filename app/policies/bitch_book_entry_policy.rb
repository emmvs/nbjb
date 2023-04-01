class BitchBookEntryPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(approved: true)
      end
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    destroy?
  end

  def approved?
    user.admin?
  end

  def destroy?
    record.user == user
  end
end
