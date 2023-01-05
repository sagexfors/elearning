# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.teacher?
      dashboards_teacher_path
    elsif resource.student?
      dashboards_student_path
    end
  end
end
