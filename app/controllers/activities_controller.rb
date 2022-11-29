class ActivitiesController < ApplicationController
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

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :url)
  end
end