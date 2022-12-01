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

user1 = User.create(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Bob", last_name: "L'Eponge", tagline: "Project Lead")
collaborator1 =  User.create(email: "arazd@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Mark", last_name: "Zuckerberg", tagline: "Senior Developer")
collaborator2 =  User.create(email: "arazds@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Henry", last_name: "Mars", tagline: "Marketing Lead")
collaborator3 =  User.create(email: "arazdsss@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Harry", last_name: "Potter", tagline: "Lead Magician")
collaborator4 =  User.create(email: "arazdsssss@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Groucho", last_name: "Marx", tagline: "PR Lead")
collaborator5 =  User.create(email: "ssssss@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Elizabeth", last_name: "Holmes", tagline: "Junior Developer")

2.times do
  proj = Project.new(
    owner: user1,
    name: Faker::Movie.title,
    description: "Lorem Ipsum is simply dummy text of the",
    yturl: "5qap5aO4i9A"
  )
  proj.save!
  ProjectUser.create(
    user: collaborator1,
    project: proj
  )
  ProjectUser.create(
    user: collaborator2,
    project: proj
  )
  ProjectUser.create(
    user: collaborator3,
    project: proj
  )
  ProjectUser.create(
    user: collaborator4,
    project: proj
  )
  ProjectUser.create(
    user: collaborator5,
    project: proj
  )
end
