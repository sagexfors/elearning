# frozen_string_literal: true

class SubjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_subject, only: %i[show edit update destroy]

  layout 'dashboards'
  def index
    return @subjects = current_user.student_subjects if current_user.student?

    @subjects = current_user.teacher_subjects
    @subject = Subject.new
  end

  def show; end

  def create
    @subject = Subject.new(subject_params)
    authorize @subject
    @subject.user = current_user
    return unless @subject.save

    redirect_to subjects_path, status: :see_other, notice: 'Subject was successfully created.'
  end

  def edit
    authorize @subject
  end

  def update
    authorize @subject
    @subject.update(subject_params)
    redirect_to @subject, status: :see_other, notice: 'Subject was successfully updated.'
  end

  def destroy
    authorize @subject
    @subject.destroy
    redirect_to @subject, status: :see_other, notice: 'Subject was successfully deleted.'
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end
end
