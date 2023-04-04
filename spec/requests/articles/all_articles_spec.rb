require 'rails_helper'

describe Types::QueryType, type: :request do
  before(:each) do
    @user1    = create(:user)
    @articles = create_list(:article, 10, user: @user1)
    @headers  = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }
  end

  it 'returns allarticles in the database' do
    payload = {
      "query": "query allArticles { 
        allArticles { 
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
    }

    post '/graphql', headers: @headers, params: JSON.generate(payload)

    articles = JSON.parse(response.body, symbolize_names: true).dig(:data, :allArticles)
    
    article = articles[0]
    @article1 = Article.find_by(id: article[:id])

    expect(response).to be_successful
    expect(articles).to be_a(Array)

    expect(article).to have_key(:id)
    expect(article[:id]).to be_a(String)
    expect(article[:id]).to eq(@article1[:id].to_s)

    expect(article).to have_key(:name)
    expect(article[:name]).to be_a(String)
    expect(article[:name]).to eq(@article1[:name])

    expect(article).to have_key(:status)
    expect(article[:status]).to be_a(String)
    expect(article[:status]).to eq(@article1[:status])

    expect(article).to have_key(:imageLink)
    expect(article[:imageLink]).to be_a(String)
    expect(article[:imageLink]).to eq(@article1[:image_link])

    expect(article).to have_key(:altImage)
    expect(article[:altImage]).to be_a(String)
    expect(article[:altImage]).to eq(@article1[:alt_image])

    expect(article).to have_key(:articleType)
    expect(article[:articleType]).to be_a(String)
    expect(article[:articleType]).to eq(@article1[:article_type])

    expect(article).to have_key(:ageGroup)
    expect(article[:ageGroup]).to be_a(String)
    expect(article[:ageGroup]).to eq(@article1[:age_group])

    expect(article).to have_key(:color)
    expect(article[:color]).to be_a(String)
    expect(article[:color]).to eq(@article1[:color])

    expect(article).to have_key(:gender)
    expect(article[:gender]).to be_a(String)
    expect(article[:gender]).to eq(@article1[:gender])

    expect(article).to have_key(:condition)
    expect(article[:condition]).to be_a(String)
    expect(article[:condition]).to eq(@article1[:condition])

    expect(article).to have_key(:description)
    expect(article[:description]).to be_a(String)
    expect(article[:description]).to eq(@article1[:description])

    expect(article).to have_key(:price)
    expect(article[:price]).to be_a(Integer)
    expect(article[:price]).to eq(@article1[:price])

    expect(article[:user]).to be_a(Hash)
    expect(article[:user][:id]).to eq(@article1[:user_id].to_s)
  end
end