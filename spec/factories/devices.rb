# Read about factories at https://github.com/thoughtbot/factory_girl
require 'securerandom'

FactoryGirl.define do
  factory :device do
    name  { Faker::Internet.user_name }
    uuid  { SecureRandom.uuid }
    webcam_url { Faker::Company.logo }
  end
end
