class CreateMissionStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :mission_structures do |t|
      t.string :name
      t.integer :position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
