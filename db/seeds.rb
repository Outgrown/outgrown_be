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
  image_link: "https://ih1.redbubble.net/image.1232366750.7238/ra,kids_tee,x900,FFFFFF:97ab1c12de,front-pad,750x1000,f8f8f8.jpg",
  alt_image: "A baby boy's top",
  article_type: 0,
  age_group: 0,
  color: "white",
  gender: 1,
  condition: 2,
  description: "A White t-shirt that says 'cute smart & funny just like my Daddy'",
  price: 3,
  user_id: user1.id
)

Article.create(
  name: "Funny Baby Boy Onesie",
  status: 1,
  image_link: "https://cdn.shopify.com/s/files/1/1418/9598/products/A12_Funny_Baby_Boy_Onesies_BabyBlue_1024x1024.jpg?v=1510466537",
  alt_image: "A baby boy's onesie",
  article_type: 4,
  age_group: 0,
  color: "white",
  gender: 1,
  condition: 2,
  description: "A White onesie that says 'Ladies I have Arrived'",
  price: 5,
  user_id: user1.id
)

Article.create(
  name: "Cute Sweater",
  status: 1,
  image_link: "https://static.wixstatic.com/media/f976b5_167d094a6b0a465380849842efa3a8ac~mv2_d_1597_1559_s_2.jpg/v1/fill/w_640,h_620,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/f976b5_167d094a6b0a465380849842efa3a8ac~mv2_d_1597_1559_s_2.jpg",
  alt_image: "A biege baby sweater",
  article_type: 0,
  age_group: 0,
  color: "biege",
  gender: 0,
  condition: 2,
  description: "A biege sweater, very cute for fall and winter.",
  price: 5,
  user_id: user1.id
)

Article.create(
  name: "Tan Pants",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpZTmu4czhCVPzXsF4hWY0l2ku5Y4pMav28Q&usqp=CAU",
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
  name: "Tan Pants",
  status: 1,
  image_link: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpZTmu4czhCVPzXsF4hWY0l2ku5Y4pMav28Q&usqp=CAU",
  alt_image: "A tan pair of pants",
  article_type: 1,
  age_group: 1,
  color: "tan",
  gender: 0,
  condition: 2,
  description: "Tan pair of pants",
  price: 5,
  user_id: user1.id
)

Article.create(
  name: "Red Activewear Shorts",
  status: 1,
  image_link: "https://i.ebayimg.com/images/g/g3EAAOSwmjxj3foE/s-l500.jpg",
  alt_image: "Red shorts for activewear purposes",
  article_type: 2,
  age_group: 1,
  color: "red",
  gender: 0,
  condition: 2,
  description: "Red pair of shorts",
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
  name: "Cute Pumpkin Halloween Costume",
  status: 1,
  image_link: "https://i5.walmartimages.com/asr/c7454184-bce7-48d5-a63d-f20cb4fef7d3.8d8db94a02322df0512d0521f68c0714.jpeg?odnHeight=580&odnWidth=580&odnBg=FFFFFF",
  alt_image: "an orange pumpkin halloween costume for a baby",
  article_type: 5,
  age_group: 2,
  color: "orange and green",
  gender: 0,
  condition: 2,
  description: "Super cute orange and green pumpkin halloween costume.",
  price: 4,
  user_id: user3.id
)

Article.create(
  name: "Cute Dress for formal occasions",
  status: 1,
  image_link: "https://i.etsystatic.com/17317016/r/il/cae439/1829374051/il_340x270.1829374051_6qo2.jpg",
  alt_image: "a beautiful dress, white with a blue ribbon bow in front.",
  article_type: 5,
  age_group: 1,
  color: "white and blue",
  gender: 2,
  condition: 2,
  description: "Cute formal dress for girls to a special occasion.",
  price: 10,
  user_id: user3.id
)
top_names = ["Cute Top", "Everyday Top", "Unused Top"]
top_image_links = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXV5OpzmULVOtVpfxoSTx5Arh6fcQw4iJThQ&usqp=CAU",
  "https://i.pinimg.com/236x/7e/9e/32/7e9e326dfa6aeb34e6b2f4799bf71e43.jpg",
  "https://i.etsystatic.com/25762160/c/494/392/0/137/il/a157a5/3069773585/il_340x270.3069773585_t9zt.jpg",
  "https://i.ebayimg.com/images/g/IC0AAOSwm8pjlj7k/s-l500.jpg",
  "https://b3h2.scene7.com/is/image/BedBathandBeyond/mktplace-s-7457227c-d85c-4898-b1d3-bf9e8ffdaac9"
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
  "https://target.scene7.com/is/image/Target/GUEST_e9d63b3c-056d-47fd-8839-108a32c3751f?qlt=65&fmt=webp&hei=154&wid=154",
  "https://i.etsystatic.com/5716710/r/il/44596d/2354181927/il_570xN.2354181927_kn3g.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpUFkXUrYy1MjMjsRbgaILW9xHGYgDNQNutw&usqp=CAU",
  "https://assets.theplace.com/image/upload/t_plp_img_m,f_auto,q_auto/v1/ecom/assets/products/tcp/3006029/3006029_01.jpg",
  "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81RBPTQdBxL._AC_UY1000_.jpg"
]

10.times do
  Article.create(
    name: pants_names.sample,
    status: rand(0..2),
    image_link: pants_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 1,
    age_group: rand(1..3),
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
  "https://oldnavy.gap.com/webcontent/0052/753/318/cn52753318.jpg",
  "https://www.oshkosh.com.au/images/products/2L647412/2L647412_NOCOLOUR_1.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5eFTaGvAbRQppC9IYp-GjnyM3jue6p2CQJd3n29T5Vl5XPE2Wy-J-2d4aKE27K4V1Sbo&usqp=CAU"
]
5.times do
  Article.create(
    name: activewear_names.sample,
    status: rand(0..2),
    image_link: activewear_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 1,
    age_group: rand(1..3),
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
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71nqrue4vUL._AC_UY1000_.jpg",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41i3PEyg1IL._SR240,220_.jpg",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41DJiWqr6uL.__AC_SR166,182___.jpg",
    "https://i.ebayimg.com/images/g/XJ4AAOSwBfhhNrSV/s-l1600.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiMIUYWY7vTIxdtWBXvzJ0HJC2_i04X_tealatFzk9xntTKCR6aCOLbd-LR45QIGehMAA&usqp=CAU"

  ]

10.times do
  Article.create(
    name: formal_names.sample,
    status: rand(0..2),
    image_link: formal_image_links.sample,
    alt_image: descriptions.sample,
    article_type: 1,
    age_group: rand(1..3),
    color: Faker::Color.color_name,
    gender: rand(0..2),
    condition: rand(0..3),
    description: descriptions.sample,
    price: rand(1..30),
    user_id: User.all.sample.id
  )
end
