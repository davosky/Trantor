class CreateFreeReimbursments < ActiveRecord::Migration[5.2]
  def change
    create_table :free_reimbursments do |t|
      t.integer :name
      t.integer :transport_type_id
      t.integer :veichle_id
      t.string :mission_place
      t.string :mission_structure
      t.string :mission_reason
      t.date :departure_date
      t.date :return_date
      t.date :request_date
      t.date :reimbursment_date
      t.string :mission_road
      t.decimal :mission_road_km, precision: 8, scale: 2, default: 0
      t.decimal :mission_road_hw, precision: 8, scale: 2, default: 0
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
