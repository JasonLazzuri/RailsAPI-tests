class Review < ApplicationRecord
scope :search, -> (author_parameter) { where("author like ?", "%#{author_parameter}%")}
end
