class RenameColumnMessageToName < ActiveRecord::Migration
  def up
    rename_column :reservations, :message, :name
  end

  def down
    rename_column :reservations, :name, :message 
  end
end
