class ActivitiesController < ApplicationController
  layout 'dashboards'

  before_action :authenticate_user!
  before_action :set_subject, only: %i[edit update destroy create]

  def index
    return @subjects = current_user.student_subjects if current_user.student?

    @subjects = current_user.teacher_subjects
    @subject = Subject.new
  end

  def create
    @subject.activities.create(activity_params)
    redirect_to @subject
  end
  
  def destroy
    @activity.destroy
    redirect_to @subject, status: :see_other
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to @subject, status: :see_other
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :url)
  end

  def set_subject
    @subject = authorize Subject.find(params[:subject_id])
    @activity = @subject.activities.find(params[:id])
  end
end
