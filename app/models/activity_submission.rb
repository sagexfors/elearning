# frozen_string_literal: true

class ActivitySubmission < ApplicationRecord
  belongs_to :activity
  belongs_to :student, class_name: 'User', foreign_key: :user_id

  validates :title, presence: true, length: { minimum: 1 }
  validates :description, presence: true, length: { minimum: 3 }

  validate :acceptable_file
  has_one_attached :file

  def acceptable_file
    return unless file.attached?

    allowed_content_types = %w[application/pdf application/vnd.openxmlformats-officedocument.wordprocessingml.document
                               video/mp4 application/vnd.ms-powerpoint application/vnd.openxmlformats-officedocument.presentationml.presentation]

    unless allowed_content_types.include?(file.content_type)
      errors.add(:file, 'must be a PDF, DOCX, MP4, or PowerPoint')
    end

    return if file.blob.byte_size <= 25.megabytes

    errors.add(:file, 'is too big')
  end
end
