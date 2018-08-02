FactoryBot.define do
  factory :job do
    title FFaker::Lorem.word
    description FFaker::Lorem.sentence
    location FFaker::AddressBR.city
    url FFaker::Internet.http_url
  end
end