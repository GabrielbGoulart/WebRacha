class AddGoalkeeperToEvents < ActiveRecord::Migration
  def change
    add_column :events, :goalkeeperlimit, :integer
  end
end
