json.array!(@vehicle_makes) do |vehicle_make|
  json.extract! vehicle_make, :id
  json.url vehicle_make_url(vehicle_make, format: :json)
end
