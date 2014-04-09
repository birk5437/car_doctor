json.array!(@solutions) do |solution|
  json.extract! solution, :id, :explanation_id, :description
  json.url solution_url(solution, format: :json)
end
