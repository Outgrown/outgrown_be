module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :find_article,
    Types::ArticleType,
    null: true,
    description: 'Return a specific article record' do
      argument :id, ID, required: false
      argument :name, String, required: false
    end
    def find_article(**args)
      if args.present?
        Article.find_by(args)
      else
        { article: nil }
      end
    end

    field :find_articles,
          [Types::ArticleType],
          null: false,
          description: 'Return a collection of matching article records' do
      argument :id, ID, required: false
      argument :status, String, required: false
      argument :article_type, String, required: false
      argument :age_group, String, required: false
      argument :gender, String, required: false
      argument :price, Integer, required: false
      argument :user_id, ID, required: false
    end
    def find_articles(**args)
      args.each { |key, value| args.delete(key) if value.nil? }
      Article.where(args)
    end

    field :all_articles,
          [Types::ArticleType],
          null: false,
          description: 'Return all articles' do
            argument :limit, Int, required: false
          end
    def all_articles(limit: Article.all.length)
      Article.all.limit(limit)
    end

    field :find_user,
          Types::UserType,
          null: false,
          description: 'finds a user by id' do
      argument :id, ID, required: false
    end
    def find_user(id:)
      User.find_by(id: id)
    end

    field :all_users,
          [Types::UserType],
          null: false,
          description: 'Return all users'
    def all_users
      User.all
    end
  end
end
