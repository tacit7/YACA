# spec/factories/messages.rb
FactoryBot.define do
  factory :message do
    body { Faker::Lorem.paragraph(sentence_count: 2) }
    association :user
    created_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    updated_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
  end
end
