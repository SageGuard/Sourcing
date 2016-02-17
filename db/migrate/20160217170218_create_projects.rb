class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :category
      t.string :html_category
      t.date :date
      t.string :client

      t.timestamps null: false
    end
  end
end
