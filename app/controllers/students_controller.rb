class StudentsController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboards'
  def index
    @students = current_user.teacher_students.uniq
  end
end
