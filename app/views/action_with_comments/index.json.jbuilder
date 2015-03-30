json.array!(@action_with_comments) do |action_with_comment|
  json.extract! action_with_comment, :id, :comment_id
  json.url action_with_comment_url(action_with_comment, format: :json)
end
