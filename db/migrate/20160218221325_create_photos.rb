class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.attachment :photo
      t.boolean

      t.timestamps null: false
      t.references :project
    end

    add_index :photos, :project_id
  end
end
