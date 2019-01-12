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
end
