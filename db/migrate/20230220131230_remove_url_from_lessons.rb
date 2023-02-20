class RemoveUrlFromLessons < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :url, :string
  end
end
