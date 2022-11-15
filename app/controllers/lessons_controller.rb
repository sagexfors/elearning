class LessonsController < ApplicationController
  def create
    @subject = Subject.find(params[:subject_id])
    @lesson = @subject.lessons.create(lesson_params)
    redirect_to @subject
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :description, :url)
  end
end
