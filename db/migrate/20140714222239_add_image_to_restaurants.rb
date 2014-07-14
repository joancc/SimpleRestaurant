class AddImageToRestaurants < ActiveRecord::Migration
  def up
    # remove_column :restaurants, :image, :string
  end

  def down
    # add_column :restaurants, :image
  end
end
