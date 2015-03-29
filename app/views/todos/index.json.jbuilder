json.array!(@todos) do |todo|
  json.extract! todo, :id, :content, :to_user_id, :from_user_id, :to_time, :project_id, :team_id, :is_deleted, :is_completed
  json.url todo_url(todo, format: :json)
end
