class ChangeEnrollmentsStudentIdNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :enrollments, :student_id, false
  end
end
