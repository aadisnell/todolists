class Assignment < ActiveRecord::Base
	def create_user(params)
		User.create(params)
	end

	def create_todolist(params)
		TodoList.create(params)
	end

end

