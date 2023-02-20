# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { minimum: 1 }
  validates :description, presence: true,   length: { minimum: 3 }
  validates :url, presence: true, length: { minimum: 1 }
  validate :acceptable_file
  has_one_attached :file
  has_noticed_notifications

  after_create_commit :notify_user

  def notify_user
    LessonNotification.with(lesson: self).deliver_later(subject.user.teacher_students.uniq)
  end
  def acceptable_file
    return unless file.attached?
  
    allowed_content_types = %w[application/pdf application/vnd.openxmlformats-officedocument.wordprocessingml.document video/mp4 application/vnd.ms-powerpoint application/vnd.openxmlformats-officedocument.presentationml.presentation]
  
    unless allowed_content_types.include?(file.content_type)
      errors.add(:file, "must be a PDF, DOCX, MP4, or PowerPoint")
    end
  
    unless file.blob.byte_size <= 25.megabytes
      errors.add(:file, "is too big")
    end
  end
  

end
