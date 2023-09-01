class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :pool
      t.string :barbecue
      t.string :gym
      t.string :green_areas
      t.string :childish_games
      t.string :parking_lots
      t.string :pet_friendly

      t.timestamps
    end
  end
end
