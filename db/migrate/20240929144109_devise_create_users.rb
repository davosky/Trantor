# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.datetime :remember_created_at

      t.boolean :admin
      t.boolean :accounter
      t.boolean :manager
      t.boolean :regular
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :region
      t.string :province
      t.string :institute
      t.string :office
      t.string :category
      t.string :validator
      t.string :validator_presentation
      t.string :confirmator
      t.string :confirmator_presentation
      t.string :organizational
      t.string :organizational_presentation
    end
  end
end
