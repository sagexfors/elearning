class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    @subject = Subject.new
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to subjects_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def subject_params
    params.require(:subject).permit(:name, :description)
  end
end
