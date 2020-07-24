class AddBookColumnStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :book_id, :integer
  end
end
