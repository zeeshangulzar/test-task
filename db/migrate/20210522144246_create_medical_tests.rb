class CreateMedicalTests < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_tests do |t|
      t.boolean :positive
      t.string :test_type
      t.datetime :tested_at
      t.integer :testing_center_id
      t.integer :user_id

      t.timestamps
    end
  end
end
