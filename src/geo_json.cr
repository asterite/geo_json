require "json"
require "./geo_json/exception"
require "./geo_json/object"
require "./geo_json/coordinates"
require "./geo_json/point"
require "./geo_json/multi_point"
require "./geo_json/line_string"
require "./geo_json/multi_line_string"
require "./geo_json/polygon"
require "./geo_json/multi_polygon"
require "./geo_json/geometry_collection"
require "./geo_json/feature"
require "./geo_json/feature_collection"

module GeoJSON
  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}
end
