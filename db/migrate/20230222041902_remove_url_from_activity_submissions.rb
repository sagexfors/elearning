# frozen_string_literal: true

class RemoveUrlFromActivitySubmissions < ActiveRecord::Migration[7.0]
  def change
    remove_column :activity_submissions, :url, :string
  end
end
