class AddSubjectsIdEnrollmentsSubjectIdFk < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :enrollments, :subjects, column: :subject_id, primary_key: :id
  end
end
