class FreeReimbursment < ApplicationRecord
  belongs_to :user
  belongs_to :transport_type
  belongs_to :veichle

  before_create :set_name
  def set_name
    last_name = FreeReimbursment.maximum(:name)
    self.name = last_name.to_i + 1
  end

  validates :departure_date, presence: true
  validates :return_date, presence: true
  validates :request_date, presence: true
  validates :reimbursment_date, presence: true
  validates :mission_road_km, presence: true, numericality: {grater_than_or_equal_to: 0}
  validates :mission_road_hw, presence: true, numericality: {grater_than_or_equal_to: 0}
  validates :parking_cost, presence: true, numericality: {grater_than_or_equal_to: 0}
  validates :food_cost, presence: true, numericality: {grater_than_or_equal_to: 0}
  validates :room_cost, presence: true, numericality: {grater_than_or_equal_to: 0}
  validates :generic_cost, presence: true, numericality: {grater_than_or_equal_to: 0}
  validates :costkm, presence: true, numericality: {grater_than_or_equal_to: 0}
end
