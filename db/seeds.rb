# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Usertodo.destroy_all
User.destroy_all
Todo.destroy_all

9.times do |i|
   Todo.create({
      taskname: "task #{i+1}",
      taskphoto: "https://picsum.photos/id/#{i+1}/100/100"
   }) 
end   
