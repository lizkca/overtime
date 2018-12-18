# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@user = User.create(email: "test@test.com",
                 password: "asdfasdf",
    password_confirmation: "asdfasdf", 
               first_name: "Jon", 
                last_name: "Snow")
puts "1 user created"

AdminUser.create(email: "admin@test.com",
                 password: "asdfasdf",
    password_confirmation: "asdfasdf", 
               first_name: "admin", 
                last_name: "user")
puts "1 Admin User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"
