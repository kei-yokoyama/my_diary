FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.free_email }
    password              { 'a00000' }
    password_confirmation { password }
    nickname              { Faker::Name.initials(number: 2) }
  end
end
