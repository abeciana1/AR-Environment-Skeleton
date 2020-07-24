class AddSchoolDistrictsSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :school_district_id, :integer
  end
end
