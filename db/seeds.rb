# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Movie.destroy_all
puts "Adding movies.."
10.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movies::Lebowski.quote,
    poster_url: Faker::Internet.url,
    rating: Faker::Number.decimal(l_digits: 1, r_digits: 1)
  )
end
puts "done.."
