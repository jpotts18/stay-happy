json.array!(@goals) do |goal|
  json.extract! goal, :id, :name, :type, :user_id, :end_date
  json.url goal_url(goal, format: :json)
end
