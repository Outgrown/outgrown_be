# frozen_string_literal: true

module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :status, String
    field :image_link, String
    field :alt_image, String
    field :article_type, String
    field :age_group, String
    field :color, String
    field :gender, String
    field :condition, String
    field :description, String
    field :price, Integer
    field :user_id, Integer
    field :user, Types::UserType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
