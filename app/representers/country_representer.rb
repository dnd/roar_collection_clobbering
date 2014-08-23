require 'roar/representer/json'

module CountryRepresenter
  include Roar::Representer::JSON

  property :name
  property :iso_code
end

module CountryIDRepresenter
  include Roar::Representer::JSON

  property :id
end
