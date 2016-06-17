FactoryGirl.define do
  factory :email do
    email "hello.me_1@email.com"
    association :mailboxes, factory: :client, strategy: :build

    trait :valid_1 do
    	email "f.o.o.b.a.r@gmail.com"
    end

    trait :valid_2 do
    	email "example-indeed@strange-example.com"
    end

    trait :valid_3 do
    	email 'get_at_m.e@gmail'
    end

    trait :valid_4 do
    	email '"very.unusual.unusual.com"@example.com'
    end

    trait :invld_1 do
    	email "@example.org"
    end

    trait :invld_2 do
    	email "f!@#...bar@.com"
    end

    trait :invld_3 do
    	email "foo.bar.gmail.co.uk"
    end

    trait :invld_4 do
    	email "f\ bar@gmail.com"
    end

    trait :invld_5 do
    	email "f@bar@gmail.com"
    end

    trait :invld_6 do
    	email " f.bar@gmail.com"
    end

    trait :invld_7 do
    	email "f.bar@gmail.com "
    end
  end
end
