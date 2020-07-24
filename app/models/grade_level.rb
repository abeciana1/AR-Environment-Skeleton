class School < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher

    def self.students
        self.all.collect do |school|
            school.student
        end
    end

    def self.teachers
        self.all.collect do |grade_level|
            school.teacher
        end
    end
    
end