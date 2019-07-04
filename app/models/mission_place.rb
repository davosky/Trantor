class MissionPlace < ApplicationRecord
  belongs_to :user
  has_many :reimbursments

  validates :name, presence: true
  validates :position, presence: true
end
