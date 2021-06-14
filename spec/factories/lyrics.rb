FactoryBot.define do
  factory :lyric do
    lyric {Faker::Lorem.sentence}
    song {Faker::Lorem.sentence}
    artist {Faker::Lorem.sentence}
    association :user
  end
end
