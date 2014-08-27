class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.belongs_to :locations
      t.belongs_to :routes

      t.timestamps
    end
  end
end
