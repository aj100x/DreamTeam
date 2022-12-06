# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
# require 'faker'
# Faker::Movie.title,

Project.destroy_all
User.destroy_all
CollaborationRequest.destroy_all
ProjectUser.destroy_all

user1 = User.create(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Araz", last_name: "Abedi", tagline: "Project Lead")

user2 = User.new(email: "sloane@tess.com", password: "123456", password_confirmation: '123456', first_name: "Sloane", last_name: "Carroll", tagline: "Project Lead")
user_2_image = URI.open(Rails.root.join("app", "assets", "images", "user2.jpg"))
user2.photo.attach(io: user_2_image, filename: "user2.jpg", content_type: "image/jpg")
puts "User 2 saved? -> #{user2.save!(validate: false)}"

user3 = User.new(email: "david@tess.com", password: "123456", password_confirmation: '123456', first_name: "David", last_name: "Geismar", tagline: "Project Lead")
user_3_image = URI.open(Rails.root.join("app", "assets", "images", "user3.jpg"))
user3.photo.attach(io: user_3_image, filename: "user3.jpg", content_type: "image/jpg")

user4 = User.new(email: "elizabeth@tess.com", password: "123456", password_confirmation: '123456', first_name: "Lizzie", last_name: "Windsor", tagline: "Project Lead")
user_4_image = URI.open(Rails.root.join("app", "assets", "images", "user3.jpg"))
user4.photo.attach(io: user_4_image, filename: "user4.jpg", content_type: "image/jpg")
user5 = User.new(email: "lauren@tess.com", password: "123456", password_confirmation: '123456', first_name: "Lauren", last_name: "Carroll", tagline: "Head Developer")

  # creating projects
  proj1 = Project.create(
    owner: user1,
    name: "DreamTeam",
    description: "This is a project that is geared towards creating a website designed to bring creative people together into teams, so that people with ideas can get them off the ground through the power of colllaborative thinking.",
    yturl: "5qap5aO4i9A"
  )
  proj_1_image = URI.open(Rails.root.join("app", "assets", "images", "proj1.jpg"))
  proj1.photos.attach(io: proj_1_image, filename: "proj1.jpg", content_type: "image/jpg")

  proj2 = Project.create(
    owner: user2,
    name: "The Perfumerie",
    description: "This project involves designing a new type of perfume that is hypoallergenic to all those with scent related hypersesnsitivties. ",
    yturl: "5qap5aO4i9A"
  )
  proj_2_image = URI.open(Rails.root.join("app", "assets", "images", "proj2.jpg"))
  proj2.photos.attach(io: proj_2_image, filename: "proj2.jpg", content_type: "image/jpg")

  proj3 = Project.create(
    owner: user3,
    name: "Spoons R Us",
    description: "This project relates to the design and creation of artisinal wooden spoons, carefully handcrafted by our team of local carpenters.",
    yturl: "5qap5aO4i9A"
  )
  proj_3_image = URI.open(Rails.root.join("app", "assets", "images", "proj3.jpg"))
  proj3.photos.attach(io: proj_3_image, filename: "proj3.jpg", content_type: "image/jpg")

  proj4 = Project.create(
    owner: user4,
    name: "Christmas Outreach",
    description: "Our project is geared towards finding better care for the elderly as Christmas approches elderly people are often lonely on Christmas and could use a network of friends at their fingetips. Looking for friendly people who are interested in a conmunity interest driven organisations.",
    yturl: "5qap5aO4i9A"
  )
  proj_4_image = URI.open(Rails.root.join("app", "assets", "images", "proj4.jpg"))
  proj4.photos.attach(io: proj_4_image, filename: "proj4.jpg", content_type: "image/jpg")

  proj5 = Project.create(
    owner: user5,
    name: "Plantle",
    description: "This project is the idea to create a small candle-making business. our candles are made from plant-based wax and have recycled glass holders. Looking for artists and social media managers.",
    yturl: "5qap5aO4i9A"
  )
  proj_5_image = URI.open(Rails.root.join("app", "assets", "images", "proj5.jpg"))
  proj5.photos.attach(io: proj_5_image, filename: "proj5.jpg", content_type: "image/jpg")

  proj6 = Project.create(
    owner: user5,
    name: "Last Minute London",
    description: "Our project seeks to alleviate the painstaking process of trying to find a last minute reservation on a Friday night in London. It's an app that reserves tables with certain restaurants and then relases them in a auction like fashion the day before the weekend begins.",
    yturl: "5qap5aO4i9A"
  )
  proj_6_image = URI.open(Rails.root.join("app", "assets", "images", "proj6.jpg"))
  proj6.photos.attach(io: proj_6_image, filename: "proj6.jpg", content_type: "image/jpg")

  # adding collaborators to the first project
  ProjectUser.create(
    user: user2,
    project: proj1
  )
  ProjectUser.create(
    user: user3,
    project: proj1
  )
  ProjectUser.create(
    user: user4,
    project: proj1
  )
  ProjectUser.create(
    user: user5,
    project: proj2
  )
  ProjectUser.create(
    user: user4,
    project: proj2
  )
  ProjectUser.create(
    user: user4,
    project: proj3
  )
# create a seed for: collaboration requests as requester
# create a seed for: collaboration request where i am project owner

# CollaborationRequestAsRequester.destroy_all
# CollaborationRequestAsProjectOwner.destroy_all
fake_person = User.create!(email: "meow@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "meow", last_name: "cat")
coll_request1 = CollaborationRequest.create!(project: Project.last, requester: fake_person, content: 'Hi can i be in the project')





# requester1 = CollaborationRequest.create(email: "meow@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "meow", last_name: "cat")
# owner1 = ProjectUser.create(email: "munchkin@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "munchkin", last_name: "jones")
#   collabreq = CollaborationRequestAsRequester.new(
#     user: requester1,
#     content: "I would love to work this on this project, please accept me",
#   )
#   collabreq.save!
#   collabproj = CollaborationRequestAsRequesterUser.new(
#     user: owner1,
#     content: "get me on this project asap rocky",
# )
# collabproj.save!
