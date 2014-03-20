class AddCapitalCityToCity < ActiveRecord::Migration
  def up
    add_column :cities, :capital_city, :boolean, default: false
  end

  def down
    remove_column :cities, :capital_city
  end
end
