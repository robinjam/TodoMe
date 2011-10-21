class LocationTypesController < ApplicationController
  def index
    location_types = LocationType.includes(:tags).all
    
    respond_to do |format|
      format.json { render json: location_types.to_json(include: [:tags], except: [:created_at, :updated_at, :id, :location_type_id, :tag_id]) }
    end
  end
end
