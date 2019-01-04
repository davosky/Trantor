class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :recoverable, :rememberable, :validatable, :registerable
  devise :database_authenticatable

  has_many :transport_types
  has_many :veichles
  has_many :mission_places
  has_many :mission_structures
  has_many :mission_reasons
  has_many :mission_roads
  has_many :reimbursments

  validates :name, presence: true
  validates :institute, presence: true
  validates :address, presence: true
  validates :secretary, presence: true
end
