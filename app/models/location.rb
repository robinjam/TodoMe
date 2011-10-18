class Location < ActiveRecord::Base
  belongs_to :location_type

  attr_accessible :lat, :long, :close_mon, :close_tue, :close_wed, :close_thu, :close_fri, :close_sat, :close_sun

  reverse_geocoded_by :lat, :long
end
