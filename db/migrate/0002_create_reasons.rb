class CreateReasons < ActiveRecord::Migration[7.2]
  def change
    create_table :reasons do |t|
      t.string :name
      t.integer :position
      t.references :user, null: true, foreign_key: false
    end
  end
end
