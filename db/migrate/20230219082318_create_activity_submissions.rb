# frozen_string_literal: true

class CreateActivitySubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_submissions do |t|
      t.string :title
      t.text :description
      t.string :url
      t.belongs_to :activity, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
