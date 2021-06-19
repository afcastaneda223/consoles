FactoryBot.define do
  factory :comment do
    body { "MyText" }
    user { nil }
    article { nil }
  end
end
