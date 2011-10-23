class Location < ActiveRecord::Base
  belongs_to :location_type

  attr_accessible nil

  reverse_geocoded_by :lat, :long
end
