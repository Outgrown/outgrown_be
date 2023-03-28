# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
User.destroy_all

3.times do
  User.create(name: Faker::Name.name)
end

30.times do
  Article.create(
    name: Faker::Games::Minecraft.item,
    status: 1,
    image_link: "www.image.com",
    alt_image: "it is clearly an image",
    article_type: rand(0..3),
    age_group: rand(0..3),
    color: Faker::Color.color_name,
    gender: rand(0..2),
    condition: rand(0..3),
    description: Faker::Quote.jack_handey,
    price: rand(1..30),
    user_id: User.all.sample.id
  )
end
