# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Project.destroy_all
User.destroy_all

user1 = User.create(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567')

25.times do
  proj = Project.new(
    owner_id: user1.id,
    name: "#{Faker::Movie.title}",
    description: "#{Faker::Movie.quote}"
  )
  proj.save
end
