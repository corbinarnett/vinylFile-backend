class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :username, :rating
end
