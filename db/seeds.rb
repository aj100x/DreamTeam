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
CollaborationRequest.destroy_all
ProjectUser.destroy_all

user1 = User.create(email: "araz@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "youri", last_name: "Gargarine")
collaborator1 =  User.create(email: "arazd@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "youri", last_name: "Gargarine")
collaborator2 =  User.create(email: "arazds@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "youri", last_name: "Gargarine")
collaborator3 =  User.create(email: "arazdsss@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "youri", last_name: "Gargarine")
collaborator4 =  User.create(email: "arazdsssss@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "youri", last_name: "Gargarine")
collaborator5 =  User.create(email: "ssssss@tess.com", password: "1234567", password_confirmation: '1234567', first_name: "youri", last_name: "Gargarine")

2.times do
  proj = Project.new(
    owner_id: user1.id,
    name: "#{Faker::Movie.title}",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
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

puts "we done baby!"
