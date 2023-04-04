module Types
  class MutationType < Types::BaseObject
    field :create_user,
    mutation: Mutations::CreateUser

    field :create_article,
    mutation: Mutations::CreateArticle

    field :update_article_user,
    mutation: Mutations::UpdateArticleUser

    field :update_article_status,
    mutation: Mutations::UpdateArticleStatus
  end
end
