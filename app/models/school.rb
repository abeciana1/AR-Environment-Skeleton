class School < ActiveRecord::Base
    belongs_to :student
    belongs_to :teacher
    belongs_to :school_district
    
end