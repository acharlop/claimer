FactoryGirl.define do
  factory :loss do
    dol "2016-06-17"
    description "Something really bad happened"
    association :loss_type, strategy: :build
    association :loss_address, factory: :address, strategy: :build
  end
end
