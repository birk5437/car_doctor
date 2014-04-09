json.array!(@explanations) do |explanation|
  json.extract! explanation, :id, :problem_id, :description
  json.url explanation_url(explanation, format: :json)
end
