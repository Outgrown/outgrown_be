require 'rails_helper'

describe Types::QueryType, type: :request do
  before(:each) do
    Article.delete_all
    @user1    = create(:user)
    @article1 = create(:article, user: @user1)
    @headers  = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }
  end

  it 'finds article based on variable passed as query' do
    payload = {
      "query": "query findArticle ($id: ID!) { 
        findArticle (id: $id) { 
          id 
          name 
          status 
          imageLink 
          altImage 
          articleType 
          ageGroup 
          color 
          gender 
          condition 
          description 
          price 
          user { id name } 
        } 
      }",
      "variables": { "id": "#{@article1.id}" }
    }

    post '/graphql', headers: @headers, params: JSON.generate(payload)

    article = JSON.parse(response.body, symbolize_names: true).dig(:data, :findArticle)

    expect(response).to be_successful
    expect(Article.find_by(id: @article1.id)).to be_a(Article)
    expect(article[:id]).to be_a(String)
    expect(article[:id]).to eq(@article1[:id].to_s)
    expect(article[:name]).to be_a(String)
    expect(article[:name]).to eq(@article1[:name])
    expect(article[:status]).to be_a(String)
    expect(article[:status]).to eq(@article1[:status])
    expect(article[:imageLink]).to be_a(String)
    expect(article[:imageLink]).to eq(@article1[:image_link])
    expect(article[:altImage]).to be_a(String)
    expect(article[:altImage]).to eq(@article1[:alt_image])
    expect(article[:articleType]).to be_a(String)
    expect(article[:articleType]).to eq(@article1[:article_type])
    expect(article[:ageGroup]).to be_a(String)
    expect(article[:ageGroup]).to eq(@article1[:age_group])
    expect(article[:color]).to be_a(String)
    expect(article[:color]).to eq(@article1[:color])
    expect(article[:gender]).to be_a(String)
    expect(article[:gender]).to eq(@article1[:gender])
    expect(article[:condition]).to be_a(String)
    expect(article[:condition]).to eq(@article1[:condition])
    expect(article[:description]).to be_a(String)
    expect(article[:description]).to eq(@article1[:description])
    expect(article[:price]).to be_a(Integer)
    expect(article[:price]).to eq(@article1[:price])
    expect(article[:user]).to be_a(Hash)
    expect(article[:user][:id]).to eq(@article1[:user_id].to_s)
  end
end
