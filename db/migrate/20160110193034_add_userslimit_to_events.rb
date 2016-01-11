class AddUserslimitToEvents < ActiveRecord::Migration
  def change
  add_column :events, :userlimit, :integer
  end
end
