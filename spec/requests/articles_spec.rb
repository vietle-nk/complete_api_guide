require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "#index" do
    it 'should return success response' do
      get articles_path
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      create_list :article, 2
      get articles_path
      Article.recent.each_with_index do |article, index|
        expect(json_data[index]['attributes']).to eq({
                                                       "title" => article.title,
                                                       "content" => article.content,
                                                       "slug" => article.slug
                                                     })
      end
    end

    it 'should return articles in the proper order' do
      old_article = create :article
      newer_article = create :article
      get articles_path
      expect(json_data.first['id']).to eq(newer_article.id.to_s)
      expect(json_data.last['id']).to eq(old_article.id.to_s)
    end

    it 'should paginate results' do
      create_list :article, 3
      get articles_path, params: { page: 2, per_page: 1 }
      expected_article_id = Article.recent.second.id.to_s
      expect(json_data.length).to eq 1

      expect(json_data.first['id']).to eq(expected_article_id)
    end
  end
end
