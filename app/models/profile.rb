class Profile < ActiveRecord::Base
	belongs_to :user
	validate :first_last_nil
	validates_inclusion_of :gender, :in => ["male", "female"]
	validates :first_name, exclusion: ["Sue"], if: "gender == 'male'"

	def first_last_nil
		if !first_name && !last_name
			errors.add(:last_name, "First and last name cannot be null")
		end
	end

	def self.get_all_profiles(startYear, endYear)
		where("birth_year BETWEEN #{startYear} AND #{endYear}").order(birth_year: :asc)
	end

end
