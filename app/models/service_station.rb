class ServiceStation < ApplicationRecord
    belongs_to :user
    has_many :fuels

    validates :name, presence: true
    validates :position, presence: true
    validates :vat_number, presence: true
end
