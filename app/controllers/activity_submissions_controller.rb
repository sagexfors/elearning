# frozen_string_literal: true

class ActivitySubmissionsController < ApplicationController
  layout 'dashboards'

  before_action :authenticate_user!
  def create
    @activity_submission = ActivitySubmission.new(activity_submission_params)
    @activity_submission.student = current_user
    return unless @activity_submission.save

    redirect_to @activity_submission, notice: 'Answer submitted'
  end

  def show
    @activity_submission = ActivitySubmission.find(params[:id])
  end

  def edit
    @activity_submission = ActivitySubmission.find(params[:id])
  end

  def update
    @activity_submission = ActivitySubmission.find(params[:id])
    return unless @activity_submission.update(activity_submission_params)

    redirect_to @activity_submission, notice: 'Answer updated.'
  end

  def destroy
    @activity_submission = ActivitySubmission.find(params[:id])
    @activity_submission.destroy
    redirect_to activities_path, notice: 'Answer deleted.'
  end

  private

  def activity_submission_params
    params.require(:activity_submission).permit(:title, :description, :file, :activity_id)
  end
end
