class CreateSchoolDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :school_districts do |t|
      t.string :town
    end
  end
end
