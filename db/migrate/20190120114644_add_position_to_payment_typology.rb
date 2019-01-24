class AddPositionToPaymentTypology < ActiveRecord::Migration[5.2]
  def change
    add_column :payment_typologies, :position, :integer
  end
end
