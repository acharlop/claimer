FactoryGirl.define do
  factory :phone do
    number "9175750123"
    description "Cell"
    association :phone_numbers, factory: :client, strategy: :build


    trait :dash do
    	number "917-575-0123"
    end

		trait :long do
    	number "+1 (917) 575-0123"
    end

    trait :dots do
    	number "917.575.0123"
    end

    trait :error_long do
    	number "3917-575-0123"
    end

    trait :error_short do
    	number "7-575-0123"
    end

  end
end
