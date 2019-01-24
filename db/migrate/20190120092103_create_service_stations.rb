class CreateServiceStations < ActiveRecord::Migration[5.2]
  def change
    create_table :service_stations do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :city
      t.string :province
      t.string :country
      t.string :vat_number

      t.timestamps
    end
  end
end
