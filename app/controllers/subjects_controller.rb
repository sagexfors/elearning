# frozen_string_literal: true

class SubjectsController < ApplicationController
  before_action :authenticate_user!

  layout 'dashboards'
  def index
    @subjects = current_user.subjects
    @subject = Subject.new
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(subject_params)
    @subject.user = current_user

    redirect_to subjects_path if @subject.save
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    @subject.update(subject_params)
    redirect_to @subject, status: :see_other
  end


  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to @subject, status: :see_other
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
