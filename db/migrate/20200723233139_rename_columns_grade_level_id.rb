class RenameColumnsGradeLevelId < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :grade_level, :grade_level_id
    rename_column :teachers, :grade_level, :grade_level_id
  end
end
