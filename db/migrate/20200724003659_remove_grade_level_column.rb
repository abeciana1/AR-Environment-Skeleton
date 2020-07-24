class RemoveGradeLevelColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :grade_level_id, :integer
    remove_column :teachers, :grade_level_id, :integer

    # def students
      
    # end

    # def teachers
      
    # end
  end
end
