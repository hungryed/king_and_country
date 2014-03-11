class City < ActiveRecord::Base
  belongs_to :country
  validates_presence_of :country
  validates_presence_of :name
end
