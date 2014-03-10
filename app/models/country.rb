class Country < ActiveRecord::Base
  validates_presence_of :name
  has_many :users,
    through: :country_armies
  has_many :country_armies
  before_create :generate_invite_token

  def generate_invite_token
    existing_tokens = Country.pluck(:invite_token)
    country_token = SecureRandom.hex(5)
    if existing_tokens.include?(country_token)
      generate_invite_token
    else
      self.invite_token = country_token
    end
  end
end
