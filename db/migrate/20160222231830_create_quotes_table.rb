class CreateQuotesTable < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :website
      t.string :company
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :industry
      t.string :product
      t.string :project_timing
      t.string :budget
      t.attachment :project_spec
      t.text :project_description
    end
  end
end
