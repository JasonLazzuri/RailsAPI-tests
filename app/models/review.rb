class Review < ApplicationRecord
scope :search, -> (author_parameter) { where("author like ?", "%#{author_parameter}%")}


scope :find_country, -> (country_parameter) { where("country like ?", "%#{country_parameter}%")}


# scope :highest_rating, -> (rating_parameter) {(
#   select("reviews WHERE rating=#{rating_parameter}")
#   .order("rating DESC")
#   )}
end


# (rating_parameter) { .order("rating like ?", "%#{rating_parameter}%")}
# end
