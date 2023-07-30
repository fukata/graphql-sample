require 'graphql'

module Types
  class BaseObject < GraphQL::Schema::Object
  end

  class PostType < Types::BaseObject
    description "A blog post"
    field :id, ID, null: false
    field :title, String, null: false
  end

  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: false
  end
end
