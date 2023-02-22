# frozen_string_literal: true

class CreateEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :enrollments do |t|
      t.integer :student_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
