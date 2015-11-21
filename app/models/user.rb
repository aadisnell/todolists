class User < ActiveRecord::Base
	has_one :profile, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	has_many :todo_items, through: :todo_lists, source: :todo_items
	validates_presence_of :username
	has_secure_password


	def get_completed_count(user)
		user.todo_items.where(completed: true).count
	end
end
