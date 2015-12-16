class AddSubscriptionToEvent < ActiveRecord::Migration
  def change
    add_reference :events, :subscription, index: true, foreign_key: true
  end
end
