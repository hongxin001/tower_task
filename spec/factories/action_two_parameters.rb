# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :action_two_parameter do
    parameter_1 "MyString"
    parameter_2 "MyString"
  end
end
