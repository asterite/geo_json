module GeoJSON
  # GeoJSON Object
  #
  # A GeoJSON object represents a Geometry, Feature, or collection of Features.
  #
  # * A GeoJSON object is a JSON object.
  # * A GeoJSON object has a member with the name "type". The value of
  #   the member MUST be one of the GeoJSON types.
  #   `Point`, `MultiPoint`, `LineString`, `MultiLineString`, `Polygon`, `MultiPolygon`,
  #   `GeometryCollection`, `Feature`, and `FeatureCollection`
  # * A GeoJSON object MAY have a "bbox" member, the value of which MUST
  #   be a bounding box array
  # * A GeoJSON object MAY have other members
  abstract class Object
    include JSON::Serializable

    # All possible GeoJSON types.
    alias Type = Point | MultiPoint | LineString | MultiLineString | Polygon | MultiPolygon | Feature | FeatureCollection

    abstract def type : String
  end
end
