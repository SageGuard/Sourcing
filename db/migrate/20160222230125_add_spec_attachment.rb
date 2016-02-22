class AddSpecAttachment < ActiveRecord::Migration
  def change
    add_attachment :projects, :spec
  end
end
