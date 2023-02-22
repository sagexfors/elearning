# frozen_string_literal: true

class AddEnrollmentsStudentIdIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :enrollments, %w[student_id], name: :index_enrollments_student_id
  end
end
