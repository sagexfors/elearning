# frozen_string_literal: true

class Subject < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments, source: :student
  belongs_to :teacher, class_name: 'User', foreign_key: :user_id # change to teacher_id

  belongs_to :user
  validates :name, presence: true, length: { minimum: 1 }
  validates :description, presence: true, length: { minimum: 3 }

  def to_s
    name
  end
end
