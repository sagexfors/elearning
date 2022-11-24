# frozen_string_literal: true

class AddUserIdToSubjects < ActiveRecord::Migration[7.0]
  def change
    add_column :subjects, :user_id, :integer
  end
end
