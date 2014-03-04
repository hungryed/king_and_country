class CreateCountryArmy < ActiveRecord::Migration
  def change
    create_table :country_armies do |t|
      t.references :country
      t.references :user
      t.integer :age

      t.timestamps
    end
  end
end
