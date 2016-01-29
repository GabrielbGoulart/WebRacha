class AddGeocoderAtributtes < ActiveRecord::Migration
  def change
    add_column :events, :latitude, :float
    add_column :events, :longitude, :float
    add_column :events, :adress, :string

  end
end
