# frozen_string_literal: true

class SubjectPolicy < ApplicationPolicy
  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def create?
    user.admin? || user.teacher?
  end

  def new?
    create?
  end

  def edit?
    update?
  end
end
