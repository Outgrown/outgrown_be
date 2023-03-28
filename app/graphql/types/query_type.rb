module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :find_article,
    Types::ArticleType,
    null: false,
    description: "Return a specific article record" do
      argument :name, String, required: true
    end
    def find_article(name:)
      Article.find_by(name: name)
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
