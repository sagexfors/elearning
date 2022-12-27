# frozen_string_literal: true

class LessonsController < ApplicationController
  layout 'dashboards'

  def index
    @subjects = current_user.subjects
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @lesson = @subject.lessons.create(lesson_params)
    redirect_to @subject
  end

  def destroy
    @subject = Subject.find(params[:subject_id])
    @lesson = @subject.lessons.find(params[:id])
    @lesson.destroy
    redirect_to @subject, status: :see_other
  end

  def edit
    @subject = Subject.find(params[:subject_id])
    @lesson = @subject.lessons.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:subject_id])
    @lesson = @subject.lessons.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to @subject, status: :see_other
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :url)
  end
end
