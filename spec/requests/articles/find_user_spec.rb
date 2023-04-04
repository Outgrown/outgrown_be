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
end