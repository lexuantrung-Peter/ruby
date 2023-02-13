class Post < ApplicationRecord
  attribute :views, :integer, default: 0
  has_many :comments
end
