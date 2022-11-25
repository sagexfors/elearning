# frozen_string_literal: true

class LessonsController < ApplicationController
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

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :url)
  end
end
