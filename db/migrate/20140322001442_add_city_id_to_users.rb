class AddCityIdToUsers < ActiveRecord::Migration
  def up
    add_reference :users, :city
  end

  def down
    remove_column :users, :city_id
  end
end
