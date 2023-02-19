class Activity < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { minimum: 1}
  validates :description, presence: true, length: { minimum: 3 }
  validates :url, presence: true, length: { minimum: 1 }
  has_many :activity_submissions, dependent: :destroy

  has_noticed_notifications

  after_create_commit :notify_user

  def notify_user
    ActivityNotification.with(activity: self).deliver_later(subject.user.teacher_students.uniq)
  end
end
