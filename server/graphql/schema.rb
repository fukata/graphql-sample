require 'graphql'
require './types.rb'

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :post, Types::PostType, "Find a post by ID" do
    argument :id, ID
  end

  field :posts, [Types::PostType], "Find a posts" do
    argument :limit, Integer 
  end

  def post(id:)
    {id: id, title: "TITLE #{id}"}
  end

  def posts(limit: 10)
    limit.times.map do |n|
      {id: n, title: "TITLE #{n}"}
    end
  end
end

class Schema < GraphQL::Schema
  query QueryType
end
