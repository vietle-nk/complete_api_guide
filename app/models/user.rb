# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  avatar_url :string
#  login      :string           not null
#  name       :string
#  provider   :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  # Validations
  validates :login, presence: true, uniqueness: true
  validates :provider, presence: true
end
