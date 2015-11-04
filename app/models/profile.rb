class Profile < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :first_name, :last_name
	validates_inclusion_of :gender, :in => ["male", "female"]
end
