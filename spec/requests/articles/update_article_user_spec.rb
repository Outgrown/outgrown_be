require 'rails_helper'

describe Types::MutationType, type: :request do
  before(:each) do
    @user1    = create(:user)
    @user2    = create(:user)
    @article1 = create(:article, status: "available", user: @user1)
    @headers  = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }
  end

  it 'errors on bad/missing id/user_id' do
    expect(@article1[:user_id]).to eq(@user1[:id])

    payload = {
      "query": "mutation updateArticleUser ($article: UpdateArticleUserInput!) { 
        updateArticleUser (input: $article) { 
          article {
            id 
            name 
            user { id name } 
          }
          errors
        } 
      }",
      "variables": { "article": { "id": "1000", "userId": "1000" } }
    }

    post '/graphql', headers: @headers, params: JSON.generate(payload)

    article = JSON.parse(response.body, symbolize_names: true).dig(:data, :updateArticleUser)

    binding.pry

    expect(response).to be_successful
    expect(article).to have_key(:article)
    expect(article[:article]).to eq(nil)
    expect(article).to have_key(:errors)
    expect(article[:errors]).to be_a(Array)
    expect(article.dig(:errors, 0)).to be_a(String)
    expect(article.dig(:errors, 0)).to eq("unable to find user")
    expect(article.dig(:errors, 1)).to be_a(String)
    expect(article.dig(:errors, 1)).to eq("unable to find article")
  end

  it 'updates article associated user_id' do
    expect(@article1[:user_id]).to eq(@user1[:id])

    payload = {
      "query": "mutation updateArticleUser ($article: UpdateArticleUserInput!) { 
        updateArticleUser (input: $article) { 
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

    article = JSON.parse(response.body, symbolize_names: true).dig(:data, :updateArticleUser, :article)

    expect(response).to be_successful
    expect(Article.find_by(id: article[:id])).to be_a(Article)
    expect(article[:id]).to be_a(String)
    expect(article[:id]).to eq(@article1[:id].to_s)
    expect(article[:name]).to be_a(String)
    expect(article[:name]).to eq(@article1[:name])
    expect(article[:user]).to be_a(Hash)
    expect(article[:user][:id]).to eq(@user2[:id].to_s)
  end
end
