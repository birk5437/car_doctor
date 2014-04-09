class VehicleModel < ActiveRecord::Base
  belongs_to :vehicle_make
  has_many :problems
end
