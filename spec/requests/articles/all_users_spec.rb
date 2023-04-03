require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  before(:each) do
    @headers  = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }
    @payload = {
      "query": "query allUsers { 
        allUsers { 
          id 
          name 
        } 
      }",
      "variables": {}
    }
  end

  it 'finds empty list for empty database' do
    post '/graphql', headers: @headers, params: JSON.generate(@payload)

    users = JSON.parse(response.body, symbolize_names: true).dig(:data, :allUsers)

    expect(response).to be_successful
    expect(users).to eq([])
  end

  it 'finds all users in the database' do
    @users = create_list(:user, 10)
    post '/graphql', headers: @headers, params: JSON.generate(@payload)

    users  = JSON.parse(response.body, symbolize_names: true).dig(:data, :allUsers)
    user   = users[0]

    expect(response).to be_successful
    expect(User.find_by(id: user[:id])).to be_a(User)
    expect(user[:id]).to be_a(String)
    expect(user[:id]).to eq(@users[0][:id].to_s)
    expect(user[:name]).to be_a(String)
    expect(user[:name]).to eq(@users[0][:name])
  end
end
