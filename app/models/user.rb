class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :registerable

  has_many :reimbursments
  has_many :free_reimbursments
  has_many :veichles
  has_many :transport_types
  has_many :mission_structures
  has_many :mission_roads
  has_many :mission_reasons
  has_many :mission_places
  has_many :service_stations
  has_many :payment_typologies
  has_many :fuels

  validates :name, presence: true
  validates :institute, presence: true
  validates :address, presence: true
  validates :secretary, presence: true
  validates :user_typology, presence: true
end
