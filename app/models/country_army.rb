class CountryArmy < ActiveRecord::Base
  validates_presence_of :country
  validates_presence_of :user
  validates_presence_of :age
  belongs_to :user
  belongs_to :country
end
