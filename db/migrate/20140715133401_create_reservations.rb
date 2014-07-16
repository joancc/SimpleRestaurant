class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.string :message
      t.datetime :time 
      t.string :email

      t.timestamps
    end
  end
end
