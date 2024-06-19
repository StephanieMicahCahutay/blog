class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author, :published_at, :status
  has_many :comments
end