class Tag < ActiveRecord::Base
  has_many :location_types, :through => :taggings
  
  attr_accessible :name

  validates_presence_of :name
end
