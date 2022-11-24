# frozen_string_literal: true

class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
