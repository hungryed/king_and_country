class CreateCountry < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
