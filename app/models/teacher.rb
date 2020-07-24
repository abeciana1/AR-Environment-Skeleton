class Teacher < ActiveRecord::Base
    has_many :schools
    has_many :students, through: :schools

    def tenure
        if self.years_of_experience > 5
            true
        else
            false
        end
    end

    def students
        self.schools.collect do |school|
            school.student if school.teacher == self
        end
    end
    
end