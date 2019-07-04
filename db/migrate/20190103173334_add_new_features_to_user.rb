class AddNewFeaturesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_typology, :string
    add_column :users, :cost_per_km, :decimal, precision: 8, scale: 2, default: 0
  end
end
