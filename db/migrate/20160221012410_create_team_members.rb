class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :title
      t.string :facebook
      t.string :linkedin
      t.attachment :photo

      t.timestamps null: false
    end
  end
end
