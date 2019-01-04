class CreateVeichles < ActiveRecord::Migration[5.2]
  def change
    create_table :veichles do |t|
      t.string :name
      t.string :producer
      t.string :licenceplate
      t.integer :position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
