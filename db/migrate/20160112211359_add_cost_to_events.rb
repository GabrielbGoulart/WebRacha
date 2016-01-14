class AddCostToEvents < ActiveRecord::Migration
  def change
    add_column :events, :cost, :float
  end
end
