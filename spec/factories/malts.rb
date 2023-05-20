# frozen_string_literal: true

FactoryBot.define do
  factory :malt do
    name { Faker::Beer.name }
    amount { Faker::Number.decimal(l_digits: 1, r_digits: 1) }
    provider { Faker::Beer.brand }
    classification { Malt.classifications[Malt.classifications.keys.sample] }

    traits_for_enum :classification
  end
end
