require 'rails_helper'

describe Types::MutationType, type: :request do
  before(:each) do
    Article.delete_all
    @user1    = create(:user)
    @user2    = create(:user)
    @article1 = create(:article, status: "available", user: @user1)
    @headers  = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }
  end

  it 'updates article associated user_id' do
    expect(@article1[:user_id]).to eq(@user1[:id])

    payload = {
      "query": "mutation updateArticle ($article: UpdateArticleInput!) { 
        updateArticle (input: $article) { 
          article {
            id 
            name 
            user { id name } 
          }
        } 
      }",
      "variables": { "article": { "id": "#{@article1.id}", "userId": "#{@user2.id}" } }
    }

    post '/graphql', headers: @headers, params: JSON.generate(payload)

    article = JSON.parse(response.body, symbolize_names: true).dig(:data, :updateArticle, :article)

    expect(response).to be_successful
    expect(Article.find_by(id: @article1.id)).to be_a(Article)
    expect(article[:id]).to be_a(String)
    expect(article[:id]).to eq(@article1[:id].to_s)
    expect(article[:name]).to be_a(String)
    expect(article[:name]).to eq(@article1[:name])
    expect(article[:user]).to be_a(Hash)
    expect(article[:user][:id]).to eq(@user2[:id].to_s)
  end
end
