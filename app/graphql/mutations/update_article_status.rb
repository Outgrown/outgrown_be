class Mutations::UpdateArticleStatus < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :status, String, required: true

  field :success, Boolean, null: false
  field :article, Types::ArticleType, null: true
  field :errors, [String], null: false

  def resolve(id:, status:)
    article = Article.find_by(id: id)

    if article
      article.update(status: status)
      { success: true, article: article, errors: [] }
    else
      errors = []
      errors << "unable to find article" if !article
      errors << "unable to update article" if article && article[:status] != status
      { success: false, article: nil, errors: errors }
    end
  end
end
