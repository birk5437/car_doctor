json.array!(@problems) do |problem|
  json.extract! problem, :id, :vehicle_model_id
  json.url problem_url(problem, format: :json)
end
