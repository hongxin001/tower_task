json.array!(@action_one_parameters) do |action_one_parameter|
  json.extract! action_one_parameter, :id, :parameter
  json.url action_one_parameter_url(action_one_parameter, format: :json)
end
