class AddEnrollmentsSubjectIdIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :enrollments, %w[subject_id], name: :index_enrollments_subject_id
  end
end
