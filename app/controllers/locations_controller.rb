class LocationsController < ApplicationController
  def index
    radius = params[:radius].to_f
    radius = 10 unless radius <= 10
    if params[:type].nil?
      nearbys = Location.includes([:location_type]).near([params[:lat].to_f, params[:long].to_f], params[:radius].to_f, order: "distance", limit: 10)
    else
      location_type = LocationType.find_by_name(params[:type])
      nearbys = location_type.nil? ? [] : location_type.locations.includes([:location_type]).near([params[:lat].to_f, params[:long].to_f], radius, order: "distance", limit: 10)
    end
    
    respond_to do |format|
      format.html { render text: '<img src="http://maps.google.com/maps/api/staticmap?size=800x600&sensor=false&markers=' + nearbys.collect { |loc| "#{loc.lat}%2C#{loc.long}" }.join('|') + '">' }
      format.json { render json: nearbys.to_json(include: [:location_type], except: [:created_at, :updated_at, :id, :location_type_id]) }
    end
  end
end
