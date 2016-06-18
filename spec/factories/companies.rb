FactoryGirl.define do
  factory :company do
    name "My awesome company"
    association :company_type, strategy: :build
  end
end
