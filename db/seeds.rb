#Reinit seed
User.destroy_all
TodoList.destroy_all
TodoItem.destroy_all
Profile.destroy_all

Profile.create!([
				 {gender: 'female', birth_year: 1954, first_name: "Carly", last_name: "Fiorina"},
				 {gender: 'male', birth_year: 1946, first_name: "Donald", last_name: "Trump"},
				 {gender: 'male', birth_year: 1951, first_name: "Ben", last_name: "Carson"},
				 {gender: 'female', birth_year: 1947, first_name: "Hillary", last_name: "Clinton"}])

profiles = Profile.all
due_date = Date.today + 1.year

profiles.each do |profile|
	profile.create_user(username: 		 'profile.last_name'
						password_digest: 'password' )
	profile.user.todo_lists.create!(list_name: "#{profile.username}'s list",
									list_due_date: due_date)
	5.times.do
		profile.user.todo_lists.last.todo_items.create(due_date:     due_date,
													   title:       "Cat",
													   description: "Dog")
	end
end

