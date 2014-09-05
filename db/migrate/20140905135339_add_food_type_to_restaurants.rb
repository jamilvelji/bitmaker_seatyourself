class AddFoodTypeToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :food_type, :string
    add_column :restaurants, :price, :string
    add_column :restaurants, :website, :string
    add_column :restaurants, :hours, :string
  end
end
