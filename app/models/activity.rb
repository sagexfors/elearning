class Activity < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { minimum: 10 }
  # add validation for url same with lesson
end
