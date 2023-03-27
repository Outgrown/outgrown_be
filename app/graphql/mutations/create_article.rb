class Mutations::CreateArticle < Mutations::BaseMutation
  argument :name, String, required: true
  argument :status, Integer, required: true
  argument :image_link, String, required: true
  argument :alt_image, String, required: true
  argument :article_type, Integer, required: true
  argument :age_group, Integer, required: true
  argument :color, String, required: true
  argument :gender, Integer, required: true
  argument :condition, Integer, required: true
  argument :description, String, required: true
  argument :price, Integer, required: true
  argument :user_id, Integer, required: true

  field :article, Types::ArticleType, null: false
  field :errors, [String], null: false

  def resolve(
    name:,
    status:,
    image_link:,
    alt_image:,
    article_type:,
    age_group:,
    color:,
    gender:,
    condition:,
    description:,
    price:,
    user_id:
  )
    article = Article.new(
      name: name,
      status: status,
      image_link: image_link,
      alt_image: alt_image,
      article_type: article_type,
      age_group: age_group,
      color: color,
      gender: gender,
      condition: condition,
      description: description,
      price: price,
      user_id: user_id
    )

    if article.save
      { article: article, errors: [] }
    else
      { user: nil, errors: article.errors.full_messages }
    end
  end
end
