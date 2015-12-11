class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :theme
      t.string :mood
      t.string :primary_color
      t.string :secondary_color
      t.string :project_template
      t.boolean :private

      t.timestamps

    end
  end
end
