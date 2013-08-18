FactoryGirl.define do
  factory :user_file do
    sequence :name do |n|
      "name#{n}"
    end
  end
end
