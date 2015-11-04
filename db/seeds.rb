# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: 'Fiorina', password_digest: 'password')
User.create!(username: 'Trump', password_digest: 'password')
User.create!(username: 'Carson', password_digest: 'password')
User.create!(username: 'Clinton', password_digest: 'password')

Profile.create!(gender: 'female', birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
Profile.create!(gender: 'male', birth_year: 1946, first_name: "Donald", last_name: "Trump")
Profile.create!(gender: 'male', birth_year: 1951, first_name: "Ben", last_name: "Carson")
Profile.create!(gender: 'female', birth_year: 1947, first_name: "Hillary", last_name: "Clinton")

TodoList.create!(list_name:"Cat", list_due_date: 1.year)

(1...5).each do |i|
	TodoItem.create!(due_date: 1.year, title: "Dog #{i}", description: "Catdog")
end