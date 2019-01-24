class AddUserToFuel < ActiveRecord::Migration[5.2]
  def change
    add_reference :fuels, :user, foreign_key: true
  end
end
