class TransportType < ApplicationRecord
    belongs_to :user
    has_many :reimbursments
    has_many :free_reimbursments

    validates :name, presence: true
    validates :position, presence: true
end
