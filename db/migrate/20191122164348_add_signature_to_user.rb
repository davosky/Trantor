class AddSignatureToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :signature, :string
  end
end
