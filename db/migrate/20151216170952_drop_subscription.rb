class DropSubscription < ActiveRecord::Migration
  def change
    drop_table :events_user
  end
end
