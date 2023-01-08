class AddUsersIdEnrollmentsStudentIdFk < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :enrollments, :users, column: :student_id, primary_key: :id
  end
end
