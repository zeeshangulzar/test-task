class CreateTestingCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :testing_centers do |t|
      t.string :name

      t.timestamps
    end
  end
end
