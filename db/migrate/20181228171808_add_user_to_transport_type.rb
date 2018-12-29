class AddUserToTransportType < ActiveRecord::Migration[5.2]
  def change
    add_reference :transport_types, :user, foreign_key: true
  end
end
