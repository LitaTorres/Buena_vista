class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :price
      t.integer :number
      t.string :bedroom
      t.string :bathroom
      t.string :image
      t.references :client, null: false, foreign_key: true
      t.references :building, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
