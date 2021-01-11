FactoryBot.define do
  factory :user do
    email                 { Faker::Internet.free_email }
    password              { 'a0000#' }
    password_confirmation { password }
    nickname              { Faker::Name.initials(number: 2) }
  end
end
