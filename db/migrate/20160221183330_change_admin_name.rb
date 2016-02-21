class ChangeAdminName < ActiveRecord::Migration
  def up
    rename_column :users, :admin, :dashboard_admin
  end

  def down
    rename_colume :users, :dashboard_admin, :admin
  end
end
