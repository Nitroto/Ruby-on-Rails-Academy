class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name, null: false, limit: 30
      t.string :last_name, null: false, limit: 30

      t.timestamps
    end
  end
end
