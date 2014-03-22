class User < ActiveRecord::Base
  attr_accessor :login
  validates :username,
  :uniqueness => {
    :case_sensitive => false
  }
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :username
  has_many :countries,
    through: :country_armies
  has_many :country_armies
  belongs_to :city
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def current_country
    user_country = CountryArmy.where("age = ? AND user_id = ?",
     CountryArmy.current_age,
     self.id).first
    if user_country == nil
      false
    else
      user_country.country
    end
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
end
