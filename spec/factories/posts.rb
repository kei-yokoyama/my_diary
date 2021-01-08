FactoryBot.define do
  factory :post do
    title                 { "今日の日記" }
    text                  { "よろしくお願いします。" }
    association :user

    after(:build) do |post|
      post.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
