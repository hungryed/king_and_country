class AddInviteTokenToCountry < ActiveRecord::Migration
  def up
    add_column :countries, :invite_token, :string, null: false, limit: 10
  end

  def down
    remove_column :countries, :invite_token
  end
end
