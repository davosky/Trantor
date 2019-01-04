class Reimbursment < ApplicationRecord
  belongs_to :transport_type
  belongs_to :veichle
  belongs_to :mission_place
  belongs_to :mission_structure
  belongs_to :mission_reason
  belongs_to :mission_road
  belongs_to :user

  before_create :set_name
  def set_name
    last_name = Reimbursment.maximum(:name)
    self.name = last_name.to_i + 1
  end

  validates :mission_reason_id, presence: true
  validates :mission_place_id, presence: true
  validates :departure_date, presence: true
  validates :return_date, presence: true
  validates :request_date, presence: true
  validates :reimbursment_date, presence: true
end
