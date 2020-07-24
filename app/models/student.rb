require "pry"

class Student < ActiveRecord::Base
    has_many :schools
    has_many :teachers, through: :schools
    has_many :books

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def self.all_in_grade(grade)
        self.all.select { |student| student.grade == grade }
    end

    def teachers
        self.schools.collect do |school|
            school.teacher if school.student == self
        end
    end


end