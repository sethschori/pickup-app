FactoryBot.define do
  factory :pickup do
    association :user, factory: :user
    pickup_date { Date.today }
    location_name { "MyLocationName" }
    street_address { "MyStreetAddress" }
    city { "MyCity" }
    state { "MyState" }
    country { "MyCountry" }
  end
end
