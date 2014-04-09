class AddNameToVehicleMakes < ActiveRecord::Migration
  def change
    add_column :vehicle_makes, :name, :string
  end
end
