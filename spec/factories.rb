FactoryGirl.define do
  factory :user do
    name     "Factory User"
    email    "factory_user@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
