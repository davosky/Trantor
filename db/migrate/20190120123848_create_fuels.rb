class CreateFuels < ActiveRecord::Migration[5.2]
  def change
    create_table :fuels do |t|
      t.integer :name
      t.date :date
      t.string :place
      t.references :service_station, foreign_key: true
      t.references :payment_typology, foreign_key: true
      t.decimal :amount, precision: 8, scale: 2, default: 0

      t.timestamps
    end
  end
end
