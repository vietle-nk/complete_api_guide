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
class Article < ApplicationRecord
  # Validations
  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true

  # Scopes
  scope :recent, -> { order(created_at: :desc) }
end
