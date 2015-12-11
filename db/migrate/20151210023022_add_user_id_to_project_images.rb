class AddUserIdToProjectImages < ActiveRecord::Migration
  def change
    add_column :project_images, :user_id, :integer
  end
end
