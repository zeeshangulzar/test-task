class CreateApiResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :api_responses do |t|
      t.jsonb :response
      t.string :center, null: false, index: true

      t.timestamps
    end
  end
end
