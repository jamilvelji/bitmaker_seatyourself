class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :booking
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
