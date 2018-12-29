class Veichle < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :producer, presence: true
  validates :licenceplate, presence: true
  validates :position, presence: true
end
