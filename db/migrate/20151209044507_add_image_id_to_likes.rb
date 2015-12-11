class AddImageIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :image_id, :integer
  end
end
