class EnrollmentsController < ApplicationController
  def enroll
    @subjects = current_user.teacher_subjects
    @subjects.each do |subject|
      Enrollment.create student_id: params[:student_id], subject_id: subject.id
    end
    redirect_to students_index_path, notice: "Student enrolled!"
  end
end
