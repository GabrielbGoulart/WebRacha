class AddIsfulToEvents < ActiveRecord::Migration
  def change
    add_column :events, :isFul, :boolean, :default  => false
  end
end
