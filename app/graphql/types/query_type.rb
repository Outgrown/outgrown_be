module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :find_article,
    Types::ArticleType,
    null: false,
    description: "Return a specific article record" do
      argument :id, ID, required: false
      argument :name, String, required: false
    end
    def find_article(**args)
      Article.find_by(args)
    end

    field :find_articles,
    [Types::ArticleType],
    null: false,
    description: "Return a collection of matching article records" do
      argument :id, ID, required: false
      argument :status, String, required: false
      argument :article_type, String, required: false
      argument :age_group, String, required: false
      argument :gender, String, required: false
      argument :price, Integer, required: false
      argument :user_id, ID, required: false
    end
    def find_articles(**args)
      Article.where(args)
    end

    field :all_articles,
    [Types::ArticleType],
    null: false,
    description: "Return all articles"

    def all_articles
      Article.all
    end
  end
end
