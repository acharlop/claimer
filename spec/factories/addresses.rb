FactoryGirl.define do
  factory :address do
    street "123 noplace street"
    zip 1111
    city "Bumblescrew"

    trait :apartment do
    	apartment "floor 2"
    end

    trait :new_york do
    	state "NY"
    end

  end

end
