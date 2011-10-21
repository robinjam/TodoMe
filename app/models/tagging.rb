class Tagging < ActiveRecord::Base
  belongs_to :location_type
  belongs_to :tag
  
  attr_accessible nil
end
