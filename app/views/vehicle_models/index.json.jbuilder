json.array!(@vehicle_models) do |vehicle_model|
  json.extract! vehicle_model, :id, :vehicle_make_id, :name, :year
  json.url vehicle_model_url(vehicle_model, format: :json)
end
