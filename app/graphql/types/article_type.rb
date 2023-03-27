# frozen_string_literal: true

module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :status, Integer
    field :image_link, String
    field :alt_image, String
    field :article_type, Integer
    field :age_group, Integer
    field :color, String
    field :gender, Integer
    field :condition, String
    field :description, String
    field :price, Integer
    field :user_id, Integer
    field :user, Types::UserType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
