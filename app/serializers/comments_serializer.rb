class CommentsSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :user
  belongs_to :post
end
