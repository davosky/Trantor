class AddPositionToSeriveStation < ActiveRecord::Migration[5.2]
  def change
    add_column :service_stations, :position, :integer
  end
end
