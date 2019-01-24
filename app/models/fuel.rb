class Fuel < ApplicationRecord
  belongs_to :service_station
  belongs_to :payment_typology
  belongs_to :user

  before_create :set_name
  def set_name
    last_name = Fuel.maximum(:name)
    self.name = last_name.to_i + 1
  end

  validates :date, presence: true
  validates :place, presence: true
  validates :service_station_id, presence: true
  validates :payment_typology_id, presence: true
  validates :amount, presence: true
  validates :km, presence: true
end
