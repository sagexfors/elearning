# frozen_string_literal: true

class LessonsController < ApplicationController
  layout 'dashboards'

  before_action :authenticate_user!
  before_action :set_subject, only: [:destroy, :edit, :update]

  def index
    return @subjects = current_user.student_subjects if current_user.student?

    @subjects = current_user.teacher_subjects
    @subject = Subject.new
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def create
    @subject = authorize Subject.find(params[:subject_id])
    @subject.lessons.create(lesson_params)
    redirect_to @subject, status: :see_other, notice: 'Lesson was successfully created.'
  end

  def destroy
    @lesson.destroy
    redirect_to @subject, status: :see_other, notice: 'Lesson was successfully deleted.'
  end

  def edit
  end

  def update
    @lesson.update(lesson_params)
    redirect_to @subject, status: :see_other, notice: 'Lesson was successfully updated.'
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :url)
  end
  
  def set_subject
    @subject = authorize Subject.find(params[:subject_id])
    @lesson = @subject.lessons.find(params[:id])
  end
end
