class CreateReimbursments < ActiveRecord::Migration[5.2]
  def change
    create_table :reimbursments do |t|
      t.integer :name
      t.references :transport_type, foreign_key: true
      t.references :veichle, foreign_key: true
      t.references :mission_place, foreign_key: true
      t.references :mission_structure, foreign_key: true
      t.references :mission_reason, foreign_key: true
      t.date :departure_date
      t.date :return_date
      t.date :request_date
      t.date :reimbursment_date
      t.references :mission_road, foreign_key: true
      t.decimal :parking_cost, precision: 8, scale: 2, default: 0
      t.decimal :food_cost, precision: 8, scale: 2, default: 0
      t.decimal :room_cost, precision: 8, scale: 2, default: 0
      t.decimal :ticket_cost, precision: 8, scale: 2, default: 0
      t.decimal :generic_cost, precision: 8, scale: 2, default: 0
      t.decimal :costkm, precision: 8, scale: 2, default: 0
      t.string :secretary
      t.string :institute
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
