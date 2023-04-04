require 'rails_helper'

describe Types::QueryType, type: :request do
  before(:each) do
    @name = 'William'
    @headers = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }
  end
  it 'finds all users in the database' do
    payload = {
      "query": "mutation createUser ($user: CreateUserInput!) {
            createUser (input: $user){
              user {
                id
                name
              }
            }
          }",
      "variables": { "user": { "name": "#{@name}"} }
    }

    post '/graphql', headers: @headers, params: JSON.generate(payload)

    user = JSON.parse(response.body, symbolize_names: true)
    expect(user[:data][:createUser][:user]).to have_key(:id)
    expect(user[:data][:createUser][:user]).to have_key(:name)
  end
end
