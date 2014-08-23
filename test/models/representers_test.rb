require 'test_helper'

class RepresentersTest < ActiveSupport::TestCase
  def test_collection_presents_properly
    json = CountryRepresenter.represent(Country.all.to_a).to_json
    countries = JSON.parse(json)
    assert_nil countries.first["created_at"]
  end

  def test_multiple_representers
    json = Country.first.extend(CountryRepresenter, CountryIDRepresenter).to_json
    country = JSON.parse(json)
    assert_not_nil country['id']
  end
end
