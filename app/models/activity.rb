class Activity < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { maximum: 240 }
  validates :description, presence: true, length: { minimum: 5 }
  # add validation for url same with lesson
end
