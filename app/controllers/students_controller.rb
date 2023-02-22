# frozen_string_literal: true

class StudentsController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboards'
  def index
    @students = current_user.teacher_students.uniq
    @all_students = User.where(role: 'student').where.not(id: @students.map(&:id))
  end
end
