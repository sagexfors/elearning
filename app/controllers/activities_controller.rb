class ActivitiesController < ApplicationController
  def create
    @subject = Subject.find(params[:subject_id])
    @activity = @subject.activities.create(activity_params)
    redirect_to @subject
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :url)
  end
end
