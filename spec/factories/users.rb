FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    password_digest { Faker::Internet.password(min_length: 8) }
  end
end

