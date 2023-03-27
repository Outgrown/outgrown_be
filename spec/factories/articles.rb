FactoryBot.define do
  factory :article do
    name { Faker::Games::Minecraft.item }
    status { [{ 0 => 'unavailable' }, { 1 => 'available' }, { 2 => 'shipped' }].sample }
    image_link { Faker::Internet.domain_name }
    alt_image { Faker::Quotes::Shakespeare.as_you_like_it_quote }
    type { [{ 0 => 'bottoms' }, { 1 => 'tops' }, { 2 => 'dresses' }, { 3 => 'other' }].sample }
    age_group { [{ 0 => 'baby' }, { 1 => 'todler' }, { 2 => 'little kid' }, { 3 => 'big kid' }].sample }
    color { Faker::Color.color_name }
    gender { [{ 0 => 'male' }, { 1 => 'female' }, { 2 => 'unisex' }].sample }
    condition { [{ 0 => 'fair' }, { 1 => 'good' }, { 2 => 'great' }, { 3 => 'perfect' }].sample }
    description  { Faker::Quote.jack_handey }
    price { Faker::Number.between(from: 1, to: 30) }
    user
  end
end
