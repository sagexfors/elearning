# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { minimum: 10 }
end
