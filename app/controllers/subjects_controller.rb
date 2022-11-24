# frozen_string_literal: true

class SubjectsController < ApplicationController
  layout 'dashboards'
  def index
    @user = current_user
    @subjects = @user.subjects
    @subject = Subject.new
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @user = current_user
    @subject = @user.subjects.build(subject_params)

    redirect_to subjects_path if @subject.save
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
