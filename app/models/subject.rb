# frozen_string_literal: true

class Subject < ApplicationRecord
  has_many :lessons, dependent: :destroy
  belongs_to :user
  validates :name, presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { minimum: 10 }
end
