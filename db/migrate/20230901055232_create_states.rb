class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :available
      t.string :rent
      t.string :sale
      t.string :leased
      t.string :sold

      t.timestamps
    end
  end
end
