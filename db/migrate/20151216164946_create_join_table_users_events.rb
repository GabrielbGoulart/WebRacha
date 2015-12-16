class CreateJoinTableUsersEvents < ActiveRecord::Migration
  def change
    create_join_table :users, :events, column_options: {null: true} do |t|
    #  t.index [:person_id, :community_id]
    #  t.index [:community_id, :person_id]
   end
  end
end
