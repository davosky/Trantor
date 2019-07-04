class CreateMissionRoads < ActiveRecord::Migration[5.2]
  def change
    create_table :mission_roads do |t|
      t.string :name
      t.decimal :km, precision: 8, scale: 2, default: 0
      t.decimal :highway_cost, precision: 8, scale: 2, default: 0
      t.integer :position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
