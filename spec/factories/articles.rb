# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  content    :text
#  slug       :string
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :article do
    title { "MyString" }
    content { "MyText" }
    slug { "MyString" }
  end
end
