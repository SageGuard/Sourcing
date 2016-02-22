class AddQuotablePurchasable < ActiveRecord::Migration
  def change
    add_column :projects, :purchasable, :boolean
    add_column :projects, :quotable, :boolean, default: true
  end
end
