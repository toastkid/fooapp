class AddGmappableFieldsToClubs < ActiveRecord::Migration
  def self.up
    add_column :clubs, :latitude, :float #you can change the name, see wiki 
    add_column :clubs, :longitude, :float #you can change the name, see wiki 
    add_column :clubs, :gmaps, :boolean #not mandatory, see wiki  
  end

  def self.down
    remove_column :clubs, :latitude
    remove_column :clubs, :longitude
    remove_column :clubs, :gmaps       
  end
end
