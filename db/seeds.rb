# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
  end

  def generate_reviews
    20.times do |i|
      author =
      review = Review.create!(
        author: Faker::Book.author,
        content: Faker::ChuckNorris.fact
      )
      puts "Review #{i}: Author is #{review.author} and quotation is '#{review.content}'."
    end
  end
end

Seed.begin
