class Mutations::UpdateArticle < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :user_id, ID, required: true

  field :success, Boolean, null: false
  field :user, Types::UserType, null: true
  field :article, Types::ArticleType, null: true
  field :errors, [String], null: false

  def resolve(id:, user_id:)
    article = Article.find_by(id: id)
    user = User.find_by(id: user_id)

    if user && article && article[:status] == "available"
      article.update(user_id: user_id, status: "unavailable")
      { success: true, article: article, errors: [] }
    else
      errors = []
      errors << "unable to find user" if !user
      errors << "unable to find article" if !article
      errors << "unable to trade unavailable article" if article && article[:status] != "available"
      { success: false, article: nil, errors: errors }
    end
  end
end
