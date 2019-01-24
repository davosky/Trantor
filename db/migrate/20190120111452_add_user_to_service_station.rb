class AddUserToServiceStation < ActiveRecord::Migration[5.2]
  def change
    add_column :service_stations, :user_id, :integer
  end
end
