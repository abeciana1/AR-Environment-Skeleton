class AddGradeColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :grade, :string
    add_column :teachers, :grade, :string
  end
end
