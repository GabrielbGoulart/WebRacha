class DeleteIsfulToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :isFul, :boolean
  end
end
