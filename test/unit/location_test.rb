require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "reverse geocoding" do
    loc = Location.create!(lat: "44.981667", long: "-93.27833")
    assert_match /^Cedar Lake Trail, Minneapolis/, loc.address
  end
end
