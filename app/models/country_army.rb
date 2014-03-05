class CountryArmy < ActiveRecord::Base
  validates_presence_of :country
  validates_presence_of :user
  validates_presence_of :age
  belongs_to :user
  belongs_to :country

  class << self
    def current_age
      1
    end
  end
end
