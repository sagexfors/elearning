# frozen_string_literal: true

class RemoveUrlFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :url, :string
  end
end
