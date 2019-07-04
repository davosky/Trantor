class Veichle < ApplicationRecord
  belongs_to :user
  has_many :reimbursments
  has_many :free_reimbursments

  validates :name, presence: true
  validates :producer, presence: true
  validates :licenceplate, presence: true
  validates :position, presence: true
end
