class CreateVehicleMakes < ActiveRecord::Migration
  def change
    create_table :vehicle_makes do |t|

      t.timestamps
    end
  end
end
