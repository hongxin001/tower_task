json.array!(@events) do |event|
  json.extract! event, :id, :project_id, :user_id, :action_type, :action_id, :target_id
  json.url event_url(event, format: :json)
end
