# frozen_string_literal: true

class User < ApplicationRecord
  has_many :enrollments, foreign_key: :student_id, class_name: "Enrollment"
  has_many :student_subjects, through: :enrollments, source: :subject
  has_many :teacher_subjects, foreign_key: :user_id, class_name: "Subject" #change to teacher_id
  has_many :teacher_students, through: :teacher_subjects, source: :students
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: %i[student teacher admin]
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :student
  end
end
