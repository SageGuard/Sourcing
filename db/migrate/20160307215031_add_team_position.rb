class AddTeamPosition < ActiveRecord::Migration
  def change
    add_column :team_members, :position, :integer

    add_index :team_members, :position
  end
end
