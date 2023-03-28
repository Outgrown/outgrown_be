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

  field :success, Boolean, null: false
  field :article, Types::ArticleType, null: false
  field :errors, [String], null: false

  def resolve(**args)
    article = Article.new(args)

    if article.save
      { success: true, article: article, errors: [] }
    else
      { success: false, user: nil, errors: article.errors.full_messages }
    end
  end
end
