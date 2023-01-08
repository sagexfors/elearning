class SubjectPolicy < ApplicationPolicy

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def create?
    record.user == user
  end

  def new?
    create?
  end

  def edit?
    update?
  end
end