# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
      content "MyString"
      bg_status 1
      priority 1
    end
end