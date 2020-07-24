class DropGradeLevels < ActiveRecord::Migration[6.0]
  def change
    drop_table :grade_levels
  end
end
