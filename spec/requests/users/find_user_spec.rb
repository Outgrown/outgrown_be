require 'rails_helper'

describe Types::QueryType, type: :request do
    before(:each) do
        @user = create(:user)
        @headers  = {
          'CONTENT_TYPE': 'application/json',
          'ACCEPT': 'application/json'
        }
    end
    it 'finds all users in the database' do
        payload = {
          "query": "query findUser ($id: ID!) { 
            findUser (id: $id){ 
              id 
              name 
            } 
          }",
          "variables":  { "id": "#{@user.id}"} }

        post '/graphql', headers: @headers, params: JSON.generate(payload)

        user = JSON.parse(response.body, symbolize_names: true)
        expect(user[:data][:findUser]).to have_key(:id)
        expect(user[:data][:findUser]).to have_key(:name)
    end
    it 'errors when a user is not in the database' do
      payload = {
        "query": "query findUser ($id: ID!) { 
          findUser (id: $id){ 
            id 
            name 
          } 
        }",
        "variables":  { } }

      post '/graphql', headers: @headers, params: JSON.generate(payload)

      user = JSON.parse(response.body, symbolize_names: true)
      expect(user[:errors][0][:message]).to eq("Variable $id of type ID! was provided invalid value")
    end
end