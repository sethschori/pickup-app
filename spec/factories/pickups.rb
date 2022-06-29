FactoryBot.define do
  factory :pickup do
    user
    pickup_date { "2022-06-29" }
    location_name { "MyLocationName" }
    street_address { "MyStreetAddress" }
    city { "MyCity" }
    state { "MyState" }
    country { "MyCountry" }
  end
end
