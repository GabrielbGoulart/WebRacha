class RemoveSubscriptionIdToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :subscription_id

  end
end
