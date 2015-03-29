json.array!(@action_two_parameters) do |action_two_parameter|
  json.extract! action_two_parameter, :id, :parameter_1, :parameter_2
  json.url action_two_parameter_url(action_two_parameter, format: :json)
end
