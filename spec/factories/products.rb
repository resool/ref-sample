# frozen_string_literal: true

FactoryBot.define do
  factory :product   do
    ext_id { Faker::Internet.password(8) }
    name { Faker::Name.name }
  end
end
