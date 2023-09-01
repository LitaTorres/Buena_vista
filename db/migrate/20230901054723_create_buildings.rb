class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :street
      t.string :number
      t.string :city
      t.string :commune

      t.timestamps
    end
  end
end
