FactoryBot.define do
  factory :article do
    title { 'Article' }
    body { 'Article body longer than 10' }
    user
    category
    trait :with_image do
      image { fixture_file_upload(Rails.root.join('spec', 'support', 'assets', 'test-image.jpeg'), 'image/jpeg') }
    end
  end
end
