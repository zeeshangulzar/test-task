class AddIndexesAndForeignKeyConstraints < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :medical_tests, :users, on_delete: :cascade, validate: false
    add_foreign_key :medical_tests, :testing_centers, on_delete: :cascade, validate: false

    add_index :medical_tests, :user_id
    add_index :medical_tests, :testing_center_id
    add_index :medical_tests, :test_type
  end

end
