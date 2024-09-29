class CreateReasons < ActiveRecord::Migration[7.2]
  def change
    create_table :reasons do |t|
      t.string :name
      t.integer :position
    end
  end
end
