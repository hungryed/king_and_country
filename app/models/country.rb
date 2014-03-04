class Country < ActiveRecord::Base
  validates_presence_of :name
  has_many :users,
    through: :country_armies
  has_many :country_armies
end
