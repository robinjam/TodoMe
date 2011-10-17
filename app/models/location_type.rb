class LocationType < ActiveRecord::Base
  has_many :tags, :through =>:taggings
  
  attr_accessible :name

  validates_presence_of :name
end
