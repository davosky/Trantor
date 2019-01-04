class MissionReason < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :position, presence: true
end
