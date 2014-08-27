class EditStops < ActiveRecord::Migration
  def change
    rename_column :stops, :locations_id, :location_id
    rename_column :stops, :routes_id, :route_id
  end
end
