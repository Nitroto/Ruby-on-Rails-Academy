class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name, null: false, limit: 30
      t.integer :level, default: 1
      t.integer :number_of_maximum_students

      t.timestamps
    end
  end
end
