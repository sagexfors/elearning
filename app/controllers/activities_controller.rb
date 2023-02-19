class ActivitiesController < ApplicationController
  layout 'dashboards'

  before_action :authenticate_user!
  before_action :set_subject, only: %i[edit update destroy]

  def index
    return @subjects = current_user.student_subjects if current_user.student?

    @subjects = current_user.teacher_subjects
    @subject = Subject.new
  end

  def show
    @activity = Activity.find(params[:id])
    unless current_user.student?
      @answers = @activity.activity_submissions
    end
  end

  def create
    @subject = authorize Subject.find(params[:subject_id])
    @subject.activities.create(activity_params)
    redirect_to @subject, status: :see_other, notice: 'Activity was successfully created.'
  end
  
  def destroy
    @activity.destroy
    redirect_to @subject, status: :see_other, notice: 'Activity was successfully deleted.'
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to @subject, status: :see_other, notice: 'Activity was successfully updated.'
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
