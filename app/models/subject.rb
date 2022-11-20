class Subject < ApplicationRecord
  has_many :lessons
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { minimum: 10 }
end
