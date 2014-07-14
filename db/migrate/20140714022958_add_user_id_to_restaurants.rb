class AddUserIdToRestaurants < ActiveRecord::Migration
  def up
    add_column :restaurants, :user_id, :string
  end

  def down
    add_remove :restaurants, :user_id
  end
end
