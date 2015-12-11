class AddImageUrlToProjectImages < ActiveRecord::Migration
  def change
    add_column :project_images, :image_url, :string
  end
end
