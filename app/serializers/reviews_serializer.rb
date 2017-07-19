class ReviewsSerializer < ActiveModel::Serializer
  attributes :id, :content, :author, :country, :rating
end
