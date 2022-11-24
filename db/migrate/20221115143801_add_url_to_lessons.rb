# frozen_string_literal: true

class AddUrlToLessons < ActiveRecord::Migration[7.0]
  def change
    add_column :lessons, :url, :string
  end
end
