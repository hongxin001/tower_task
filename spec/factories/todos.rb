# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo do
    content "MyText"
    to_user_id 1
    from_user_id 1
    to_time "2015-03-29"
    project_id 1
    team_id 1
    is_deleted 1
    is_completed 1
  end
end
