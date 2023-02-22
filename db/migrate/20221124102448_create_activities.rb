# frozen_string_literal: true

class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :url
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
