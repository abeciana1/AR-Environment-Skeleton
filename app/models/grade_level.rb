class GradeLevel < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher

    def self.students
        self.all.collect do |grade_level|
            grade_level.student
        end
    end

    def self.teachers
        self.all.collect do |grade_level|
            grade_level.teacher
        end
    end
    
end