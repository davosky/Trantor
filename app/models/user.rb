class User < ApplicationRecord
  devise :database_authenticatable, :registerable

  has_many :reasons

  before_create :set_id

  def set_id
    last_id = User.maximum(:id)
    self.id = last_id.to_i + 1
  end

  validates :first_name, :last_name, :category, :region, :province, :institute, :office, :validator, :validator_presentation, :organizational, :organizational_presentation, :sex, presence: true
end
