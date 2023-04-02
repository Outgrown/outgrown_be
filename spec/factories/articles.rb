FactoryBot.define do
  factory :article do
    name { Faker::Games::Minecraft.item }
    status { [0, 1, 2].sample }
    image_link { Faker::Internet.domain_name }
    alt_image { Faker::Quotes::Shakespeare.as_you_like_it_quote }
    article_type { [0, 1, 2, 3].sample }
    age_group { [0, 1, 2, 3].sample }
    color { Faker::Color.color_name }
    gender { [0, 1, 2].sample }
    condition { [0, 1, 2, 3].sample }
    description  { Faker::Quote.jack_handey }
    price { Faker::Number.between(from: 1, to: 30) }
    user
  end
end
