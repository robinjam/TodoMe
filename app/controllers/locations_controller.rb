class LocationsController < ApplicationController
  def index
    location_type = LocationType.find_by_name(params[:type])
    unless location_type.nil?
      nearbys = location_type.locations.includes([:location_type]).near([params[:lat].to_f, params[:long].to_f], params[:radius].to_f, order: "distance", limit: 10)
    else
      nearbys = Location.includes([:location_type]).near([params[:lat].to_f, params[:long].to_f], params[:radius].to_f, order: "distance", limit: 10)
    end
    
    respond_to do |format|
      format.html { render text: '<img src="http://maps.google.com/maps/api/staticmap?size=800x600&sensor=false&markers=' + nearbys.collect { |loc| "#{loc.lat}%2C#{loc.long}" }.join('|') + '">' }
      format.json { render json: nearbys.to_json(include: [:location_type], except: [:created_at, :updated_at, :id, :location_type_id]) }
    end
  end
end
