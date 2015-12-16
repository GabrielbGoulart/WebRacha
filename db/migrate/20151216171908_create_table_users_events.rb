class CreateTableUsersEvents < ActiveRecord::Migration
  def change
    create_table :users_events,id: false do |t|

      t.belongs_to :user, index: true
      t.belongs_to :events, index:true
    end
  end
end
