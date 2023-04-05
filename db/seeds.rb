# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
User.destroy_all


user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)


Article.create(
  name: "Baby Boy Top",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAqTD3k1hxYOIdATrgTWGtpm7hOfMwqDryuw&usqp=CAU",
  alt_image: "A baby boy's top",
  article_type: 0,
  age_group: 0,
  color: "white",
  gender: 1,
  condition: 2,
  description: "A White t-shirt that says with blue sleeves",
  price: 3,
  user_id: user1.id
)

Article.create(
  name: "Funny Baby Boy Easter Peeps Shirt",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk46gluA9A9-brAQhdLNh6d3N7HUwMfzdsIQ&usqp=CAU",
  alt_image: "A baby boy's top",
  article_type: 4,
  age_group: 0,
  color: "white",
  gender: 1,
  condition: 2,
  description: "A White t-shirt that says 'Hanging with my peeps'",
  price: 5,
  user_id: user1.id
)

Article.create(
  name: "Toddler Funny Shirt",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFrKzFenugSGhW9ifi1YYA_xtK6JBCjqNxog&usqp=CAU",
  alt_image: "A red toddler shirt",
  article_type: 0,
  age_group: 1,
  color: "red",
  gender: 0,
  condition: 2,
  description: "A biege sweater, very cute for fall and winter.",
  price: 5,
  user_id: user1.id
)

Article.create(
  name: "Tan Pants",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJP6z422OR4Yg1ReLHX0Hv7qzyPyzGcLyvRA&usqp=CAU",
  alt_image: "A tan pair of pants",
  article_type: 0,
  age_group: 1,
  color: "tan",
  gender: 0,
  condition: 2,
  description: "Tan pair of pants",
  price: 5,
  user_id: user1.id
)

Article.create(
  name: "Gray Activewear Pants with Dinosaur Knees",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLs-57AbGuq2zlNGJHpfVJUSOiNNN6MRQLMg&usqp=CAU",
  alt_image: "Gray Activewear Pants with Dinosaur Knees",
  article_type: 2,
  age_group: 1,
  color: "red",
  gender: 0,
  condition: 2,
  description: "Gray pair of activewear pants with really cool dinosaurs on their knees",
  price: 2,
  user_id: user2.id
)

Article.create(
  name: "Green Activewear Shorts",
  status: 1,
  image_link: "https://www.oshkosh.com/dw/image/v2/AAMK_PRD/on/demandware.static/-/Sites-carters_master_catalog/default/dw6405ad1d/productimages/1O973810.jpg?sw=354&sh=444",
  alt_image: "Green shorts for activewear purposes",
  article_type: 2,
  age_group: 2,
  color: "green",
  gender: 0,
  condition: 2,
  description: "green pair of shorts",
  price: 2,
  user_id: user2.id
)

Article.create(
  name: "Striped Activewear Shorts",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqHb6gTp_bhQYRyx0UO-2ONq_SP6fZ3vum6g&usqp=CAU",
  alt_image: "Green shorts for activewear purposes",
  article_type: 2,
  age_group: 2,
  color: "blue and white",
  gender: 0,
  condition: 2,
  description: "blue and white striped activewear shorts",
  price: 2,
  user_id: user2.id
)

Article.create(
  name: "Whits and gray formal wear for child",
  status: 1,
  image_link: "https://ae01.alicdn.com/kf/H68b1fbf44d3440e3903475d7f3c10decG/Boys-Outfits-Baby-Boy-Clothes-for-Kids-Clothing-Toddler-Child-Casual-Clothes-Formal-Dress-Suit-Children.jpg_Q90.jpg_.webp",
  alt_image: "full suit for child, white and grey",
  article_type: 3,
  age_group: 2,
  color: "white and gray",
  gender: 1,
  condition: 2,
  description: "white and gray suit with a cute red bowtie, hardly used",
  price: 10,
  user_id: user3.id
)

Article.create(
  name: "Cute Dress for formal occasions",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkPNx-GI5rKBf7iiZNlb4T_FOqpvJLJrTO0g&usqp=CAU",
  alt_image: "a beautiful dress, red with animals on it.",
  article_type: 5,
  age_group: 1,
  color: "red",
  gender: 2,
  condition: 2,
  description: "Cute formal dress for girls to a special occasion.",
  price: 10,
  user_id: user3.id
)

Article.create(
  name: "Cute Casual or Formal Pink Dress",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGpuECwCdfFAVRInhMn--dIGcW5oAS22rFeg&usqp=CAU",
  alt_image: "a cute pink dress.",
  article_type: 5,
  age_group: 1,
  color: "red",
  gender: 2,
  condition: 2,
  description: "Cute casual or formal dress for girls to a special occasion.",
  price: 10,
  user_id: user3.id
)

top_names = ["Cute Top", "Everyday Top", "Unused Top"]
top_image_links = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHu8nXq6j9R2C1hKBTYjbgrBRoNIisUSA7WQ&usqp=CAU",
  "https://i.pinimg.com/236x/7e/9e/32/7e9e326dfa6aeb34e6b2f4799bf71e43.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj-OaHSOiGpmwc_QLqk0DxtZP5bZPMNpXI7A&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrxjBYSNT0xvms5bJv2mfN0xcHN447sqhkAg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZPcxkP0nGVT-a335VHTTQT6dKJvE8037LEA&usqp=CAU"
]
descriptions = ["Super Cute!", "Can't wait to pass this on!", "Hardly worn!", "I can also throw in some other articles of clothing for free."]
10.times do
  Article.create(
    name: top_names.sample,
    status: rand(0..2),
    image_link: top_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 0,
    age_group: rand(0..1),
    color: Faker::Color.color_name,
    gender: rand(0..2),
    condition: rand(0..3),
    description: descriptions.sample,
    price: rand(1..30),
    user_id: User.all.sample.id
  )
end

pants_names = ["Cute Bottoms", "Everyday Bottoms", "Unused Bottoms"]
pants_image_links = [
  "https://cdn.shopify.com/s/files/1/0598/7060/9547/products/11t.jpg?v=1660132340",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2u7v96kPcFF1f1YwanLIoQFKySJtemQzn0w&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpUFkXUrYy1MjMjsRbgaILW9xHGYgDNQNutw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQze0i6epus3s8Slag1338HWrHmhEtU6l95Gg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHl9Zp6BdBAtSjKkoQhoq8wCFjKJkJbVk84g&usqp=CAU"
]

10.times do
  Article.create(
    name: pants_names.sample,
    status: rand(0..2),
    image_link: pants_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 1,
    age_group: rand(0..3),
    color: Faker::Color.color_name,
    gender: rand(0..2),
    condition: rand(0..3),
    description: descriptions.sample,
    price: rand(1..30),
    user_id: User.all.sample.id
  )
end

activewear_names = ["Cute Activewear", "Stylish Activewear", "Hardly Ever Worn Activewear"]
activewear_image_links = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY93qyiyajVy_-lkJCqHw3uEvf1emvEqi3eQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDFs8y0PWjyP9nZIg6DCNufcZP7e5EbnxlTg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNTcf2qG8oHF47kcl4pfLSgkBhm9kz7JbtQg&usqp=CAU"
]
5.times do
  Article.create(
    name: activewear_names.sample,
    status: rand(0..2),
    image_link: activewear_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 1,
    age_group: rand(0..3),
    color: Faker::Color.color_name,
    gender: rand(0..2),
    condition: rand(0..3),
    description: descriptions.sample,
    price: rand(1..30),
    user_id: User.all.sample.id
  )
end

  formal_names = ["Cute Formal Outfit", "Show Stopper!", "Adorable Formal Outfit"]
  formal_image_links = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ5pUDyIZYBK8yM_o1aIkMtkqy9XXK6RHlyg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV20rI1OZmivIOzTwQbZ6cVtlVZbJZQKTQFg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ6mGsMR0cz9QilAKWhA_-k8f-_bRDk1es7A&usqp=CAU",
    "https://image.made-in-china.com/202f0j00jpSomiscwZkR/Wholesale-Organic-Cotton-Shirt-with-Necktie-Baby-Boy-Toddler-Embroidery-Two-Piece-Shirt-Shorts-Baby-Clothing-Set.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfsTmhUgOeTAUwRmsFp8XKYOfo5VIPIV7GOw&usqp=CAU"

  ]

10.times do
  Article.create(
    name: formal_names.sample,
    status: rand(0..2),
    image_link: formal_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 1,
    age_group: rand(0..3),
    color: Faker::Color.color_name,
    gender: rand(0..2),
    condition: rand(0..3),
    description: descriptions.sample,
    price: rand(1..30),
    user_id: User.all.sample.id
  )
end
