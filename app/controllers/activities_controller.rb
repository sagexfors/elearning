class ActivitiesController < ApplicationController
  layout 'dashboards'

  def index
    if current_user.student?
      @subjects = current_user.student_subjects
    elsif current_user.teacher?
      @subjects = current_user.teacher_subjects
    end
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @activity = @subject.activities.create(activity_params)
    redirect_to @subject
  end
  
  def destroy
    @subject = Subject.find(params[:subject_id])
    @activity = @subject.activities.find(params[:id])
    @activity.destroy
    redirect_to @subject, status: :see_other
  end

  def edit
    @subject = Subject.find(params[:subject_id])
    @activity = @subject.activities.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:subject_id])
    @activity = @subject.activities.find(params[:id])
    @activity.update(activity_params)
    redirect_to @subject, status: :see_other
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :url)
  end
end
