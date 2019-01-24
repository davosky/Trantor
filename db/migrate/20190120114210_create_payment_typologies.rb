class CreatePaymentTypologies < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_typologies do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
