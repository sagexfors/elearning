# frozen_string_literal: true

class Activity < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { minimum: 1 }
  validates :description, presence: true, length: { minimum: 3 }
  has_many :activity_submissions, dependent: :destroy

  validate :acceptable_file
  has_one_attached :file

  has_noticed_notifications

  after_create_commit :notify_user

  def notify_user
    ActivityNotification.with(activity: self).deliver_later(subject.user.teacher_students.uniq)
  end

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

  def to_s
    name
  end
end
