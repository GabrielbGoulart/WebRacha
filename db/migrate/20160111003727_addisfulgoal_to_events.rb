class AddisfulgoalToEvents < ActiveRecord::Migration
  def change
    add_column  :events, :isFulGoal, :boolean, :default => false 
  end
end
