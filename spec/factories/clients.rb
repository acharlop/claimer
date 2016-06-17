FactoryGirl.define do
  factory :client do
    first "Bobs"
    last "Burgers"
    association :home_address, factory: :address, strategy: :build
  end
end
