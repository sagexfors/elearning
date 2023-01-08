class ChangeEnrollmentsSubjectIdNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null :enrollments, :subject_id, false
  end
end
