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

user1 = User.new(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "Araz", last_name: "Abedi", tagline: "Project Lead")
user_1_image = URI.open(Rails.root.join("app", "assets", "images", "user1.jpg"))
user1.photo.attach(io: user_1_image, filename: "user1.jpg", content_type: "image/jpg")

# puts "User 2 saved? -> #{user2.save!(validate: false)}"
user2 = User.new(email: "sloane@tess.com", password: "123456", password_confirmation: '123456', first_name: "Sloane", last_name: "Carroll", tagline: "Designer")
user_2_image = URI.open(Rails.root.join("app", "assets", "images", "user2.jpg"))
user2.photo.attach(io: user_2_image, filename: "user2.jpg", content_type: "image/jpg")

puts "User 2 saved? -> #{user2.save!(validate: false)}"

user3 = User.new(email: "david@tess.com", password: "123456", password_confirmation: '123456', first_name: "David", last_name: "Geismar", tagline: "Marketing Lead")
user_3_image = URI.open(Rails.root.join("app", "assets", "images", "user3.jpg"))
user3.photo.attach(io: user_3_image, filename: "user3.jpg", content_type: "image/jpg")

user4 = User.new(email: "elizabeth@tess.com", password: "123456", password_confirmation: '123456', first_name: "Lizzie", last_name: "Windsor", tagline: "UX expert")
user_4_image = URI.open(Rails.root.join("app", "assets", "images", "user4.jpg"))
user4.photo.attach(io: user_4_image, filename: "user4.jpg", content_type: "image/jpg")

user5 = User.new(email: "lauren@tess.com", password: "123456", password_confirmation: '123456', first_name: "Lauren", last_name: "Carroll", tagline: "Head Developer")
user_5_image = URI.open(Rails.root.join("app", "assets", "images", "user5.jpg"))
user5.photo.attach(io: user_5_image, filename: "user5.jpg", content_type: "image/jpg")



tech = Category.create!(name: 'Technology')
transport = Category.create!(name: 'Transport')
education = Category.create!(name: 'Education')
healthcare = Category.create!(name: 'Healthcare')
accountancy = Category.create!(name: 'Accountancy')
sport = Category.create!(name: 'Sport')
media = Category.create!(name: 'Media')
construction = Category.create!(name: 'Construction')
marketing = Category.create!(name: 'Marketing')
charity = Category.create!(name: 'Charity')
fashion = Category.create!(name: 'Fashion')
music = Category.create!(name: 'Music')
electronics = Category.create!(name: 'Electronics')
security = Category.create!(name: 'Security')
food = Category.create!(name: 'Food')




  # creating projects
  proj1 = Project.create(
    owner: user1,
    name: "DreamTeam",
    pitch: "The website that finds your team, to build your dream.",
    description: "This is a project that is geared towards creating a website designed to bring creative people together into teams, so that people with ideas can get them off the ground through the power of colllaborative thinking.",
    yturl: "5qap5aO4i9A"
  )

  # proj_1_image = URI.open(Rails.root.join("app", "assets", "images", "proj1.jpg"))
  # proj1.photos.attach(io: proj_1_image, filename: "proj1.jpg", content_type: "image/jpg")

  CategoryProject.create!(category: tech, project: proj1)
  CategoryProject.create!(category: transport, project: proj1)
  CategoryProject.create!(category: security, project: proj1)


  proj2 = Project.create(
    owner: user2,
    name: "The Perfumerie",
    pitch: "Relief Perfume, hypoallergenic, made for sensitive noses.",
    description: "This project involves designing a new type of perfume that is hypoallergenic to all those with scent related hypersesnsitivties. This will combat the gap in the perfume marlket that exists for those with common allergies. ",
    yturl: "5qap5aO4i9A"
  )

  proj_2_image = URI.open(Rails.root.join("app", "assets", "images", "proj2.jpg"))
  proj2.photos.attach(io: proj_2_image, filename: "proj2.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: education, project: proj2)
  CategoryProject.create!(category: healthcare, project: proj2)


  proj3 = Project.create(
    owner: user3,
    name: "Spoons R Us",
    pitch: "Bona fide handcrafted artisinal spoons. Sustainable artistry.",
    description: "This project relates to the design and creation of artisinal wooden spoons, carefully handcrafted by our team of local carpenters.",
    yturl: "5qap5aO4i9A"
  )

  proj_3_image = URI.open(Rails.root.join("app", "assets", "images", "proj3.jpg"))
  proj3.photos.attach(io: proj_3_image, filename: "proj3.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: accountancy, project: proj3)
  CategoryProject.create!(category: sport, project: proj3)
  CategoryProject.create!(category: electronics, project: proj3)



  proj4 = Project.create(
    owner: user4,
    name: "Christmas Outreach",
    pitch: "No one should be lonely on Christmas. We are here to help.",
    description: "Our project is geared towards finding better care for the elderly as Christmas approches elderly people are often lonely on Christmas and could use a network of friends at their fingertips. Looking for friendly people who are interested in a conmunity interest driven organisations.",
    yturl: "inyaBPWdZIM"
  )

  proj_4_image = URI.open(Rails.root.join("app", "assets", "images", "proj4.jpg"))
  proj4.photos.attach(io: proj_4_image, filename: "proj4.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: media, project: proj4)
  CategoryProject.create!(category: construction, project: proj4)


  proj5 = Project.create(
    owner: user5,
    name: "Plantle",
    pitch: "Candles that are friendly to you, and the planet that you live on.",
    description: "This project is the idea to create a small candle-making business. our candles are made from plant-based wax and have recycled glass holders. Looking for artists and social media managers.",
    yturl: "5qap5aO4i9A"
  )

  proj_5_image = URI.open(Rails.root.join("app", "assets", "images", "proj5.jpg"))
  proj5.photos.attach(io: proj_5_image, filename: "proj5.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: marketing, project: proj5)
  CategoryProject.create!(category: charity, project: proj5)


  proj6 = Project.create(
    owner: user5,
    name: "Last Minute London.",
    pitch: "Leave it to us to sort your Friday night out. Hassle free.",
    description: "Our project seeks to alleviate the painstaking process of trying to find a last minute reservation on a Friday night in London. This is an app that reserves tables with certain restaurants and then relases them in a auction like fashion the day before the weekend begins. Skills desired include: Market strategist and UI designer. ",
    yturl: "eRbEg5HosBo"
  )

  proj_6_image = URI.open(Rails.root.join("app", "assets", "images", "proj6.jpg"))
  proj6.photos.attach(io: proj_6_image, filename: "proj6.jpg", content_type: "image/jpg")

  proj_6_image = URI.open(Rails.root.join("app", "assets", "images", "proj62.jpg"))
  proj6.photos.attach(io: proj_6_image, filename: "proj62.jpg", content_type: "image/jpg")

  CategoryProject.create!(category: food, project: proj6)
  CategoryProject.create!(category: education, project: proj6)

  proj7 = Project.create(
    owner: user1,
    name: "Backup Beats.",
    pitch: "You don't need to go to the club to hear the beats you want.",
    description: "This idea centers around the offering of free peer to peer hnads-on DJing lessons. With interest on the rise and with the high expenses fpr the equipment, now is a time like never before to share resources and get young people interested in making their own beats. Skills required include marketing. ",
    yturl: "eRbEg5HosBo"
  )

  proj_7_image = URI.open(Rails.root.join("app", "assets", "images", "proj7.jpg"))
  proj7.photos.attach(io: proj_7_image, filename: "proj7.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: music, project: proj7)
  CategoryProject.create!(category: education, project: proj7)
  CategoryProject.create!(category: electronics, project: proj7)

  proj8 = Project.create(
    owner: user2,
    name: "Beatbox Academy.",
    pitch: "Discover new sounds. Hone your style. Be the change you want to see.",
    description: "A platform that offers the opportunity to generate tunes and share them with your friends. With interest on the rise and with the high expenses fpr the equipment, now is a time like never before to share resources and get young people interested in making their own beats. Skills required include UX and UI. ",
    yturl: "eRbEg5HosBo"
  )

  proj_8_image = URI.open(Rails.root.join("app", "assets", "images", "proj8.jpg"))
  proj8.photos.attach(io: proj_8_image, filename: "proj8.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: music, project: proj8)
  CategoryProject.create!(category: education, project: proj8)
  CategoryProject.create!(category: media, project: proj8)


  proj9 = Project.create(
    owner: user3,
    name: "Street Eats",
    pitch: "The app that unlocks London and its vibrant food truck scene.",
    description: "We want to create a platform that offers a view to the amazing food truck scene that is available in London. Food truck owners struggle to find a platform of promotion due to the fact that they aren't on dleivery apps.",
    yturl: "eRbEg5HosBo"
  )

  proj_9_image = URI.open(Rails.root.join("app", "assets", "images", "proj9.jpg"))
  proj9.photos.attach(io: proj_9_image, filename: "proj9.jpg", content_type: "image/jpg")


  CategoryProject.create!(category: food, project: proj9)
  CategoryProject.create!(category: media, project: proj9)

  # adding categories to the first project

CategoryProject.create!(category: education, project: proj5)
CategoryProject.create!(category: fashion, project: proj5)



  CategoryProject.create!(category: music, project: proj6)
  CategoryProject.create!(category: fashion, project: proj6)



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
  ProjectUser.create(
    user: user3,
    project: proj3
  )
  ProjectUser.create(
    user: user1,
    project: proj3
  )
  ProjectUser.create(
    user: user4,
    project: proj4
  )
  ProjectUser.create(
    user: user2,
    project: proj5
  )
  ProjectUser.create(
    user: user3,
    project: proj6
  )

  ProjectUser.create(
    user: user2,
    project: proj6
  )
  ProjectUser.create(
    user: user4,
    project: proj6
  )
  ProjectUser.create(
    user: user4,
    project: proj7
  )
  ProjectUser.create(
    user: user5,
    project: proj7
  )
  ProjectUser.create(
    user: user2,
    project: proj7
  )
  ProjectUser.create(
    user: user4,
    project: proj8
  )
  ProjectUser.create(
    user: user1,
    project: proj8
  )
  ProjectUser.create(
    user: user3,
    project: proj8
  )
  ProjectUser.create(
    user: user4,
    project: proj9
  )
  ProjectUser.create(
    user: user5,
    project: proj9
  )
  ProjectUser.create(
    user: user2,
    project: proj9
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
