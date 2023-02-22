# frozen_string_literal: true

class ActivitySubmission < ApplicationRecord
  belongs_to :activity
  belongs_to :student, class_name: 'User', foreign_key: :user_id

  validates :title, presence: true, length: { minimum: 1 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :url, presence: true, length: { minimum: 1 }
end
