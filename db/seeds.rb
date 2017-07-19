# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
  end

  def generate_reviews
    50.times do |i|
      author =
      review = Review.create!(
        author: Faker::Book.author,
        content: Faker::ChuckNorris.fact,
        country: Faker::Address.country,
        rating: rand(1..5)
      )
      puts "Review #{i}: Author is #{review.author} and quotation is '#{review.content}' and Country is #{review.country} and rating is #{review.rating}."
    end
  end
end

Seed.begin
