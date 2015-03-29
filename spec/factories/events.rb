# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    project_id 1
    user_id 1
    type 1
    action_id 1
    target_id 1
  end
end
