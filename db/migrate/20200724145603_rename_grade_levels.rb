class RenameGradeLevels < ActiveRecord::Migration[6.0]
  def change
    rename_table :grade_levels, :schools
  end
end
