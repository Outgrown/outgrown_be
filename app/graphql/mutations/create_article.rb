class Mutations::CreateArticle < Mutations::BaseMutation
  argument :name, String, required: false
  argument :status, Integer, required: false
  argument :image_link, String, required: false
  argument :alt_image, String, required: false
  argument :article_type, Integer, required: false
  argument :age_group, Integer, required: false
  argument :color, String, required: false
  argument :gender, Integer, required: false
  argument :condition, Integer, required: false
  argument :description, String, required: false
  argument :price, Integer, required: false
  argument :user_id, Integer, required: false

  field :success, Boolean, null: false
  field :article, Types::ArticleType, null: true
  field :errors, [String], null: false

  def resolve(**args)
    article = Article.new(args)

    if article.save
      { success: true, article: article, errors: [] }
    else
      { success: false, article: nil, errors: article.errors.full_messages }
    end
  end
end
