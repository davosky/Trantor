class MissionRoad < ApplicationRecord
  belongs_to :user
  has_many :reimbursments

  validates :name, presence: true
  validates :km, presence: true
  validates :highway_cost, presence: true
  validates :position, presence: true
end
