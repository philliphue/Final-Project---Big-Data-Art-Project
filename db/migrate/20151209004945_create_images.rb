class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_name
      t.string :artwork_title
      t.string :image_url
      t.string :artist
      t.string :theme
      t.string :mood
      t.text :primary_color
      t.text :secondary_color

      t.timestamps

    end
  end
end
