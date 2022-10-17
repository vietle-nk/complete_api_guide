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
  end
end
