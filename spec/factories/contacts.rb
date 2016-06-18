FactoryGirl.define do
  factory :contact do
    first "Al"
    last "da man"
    association :position, strategy: :build
    association :company, strategy: :build
  end
end
