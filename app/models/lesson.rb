# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :subject
  validates :name, presence: true, length: { maximum: 240 }
  validates :description, presence: true, length: { minimum: 5 }
end
