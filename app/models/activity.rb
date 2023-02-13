class Activity < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { maximum: 240 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :url, presence: true, length: { maximum: 240 }
  # add validation for url same with lesson

  has_noticed_notifications

  after_create_commit :notify_user

  def notify_user
    ActivityNotification.with(activity: self).deliver_later(subject.user.teacher_students.uniq)
  end
end
