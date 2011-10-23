class Tag < ActiveRecord::Base
  has_many :location_types, :through => :taggings
  
  attr_accessible nil
end
