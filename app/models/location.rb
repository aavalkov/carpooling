class Location <ActiveRecord::Base
  validates :name, presence: :true

  has_many :stops
  has_many :routes, through: :stops

  def self.datamaker
    location_names =[]
    Location.all.each{|location| location_names << location.name}
    nodes = location_names.map {|name| {id: name, caption: name}}

    edges = []
    route_locations = []
    Route.all.each do |route|
      route.locations.each do |location|
        route_locations << location.name
        route_locations.map.with_index {|name, i| edges << {source: name, target: route_locations[i+1]} if !route_locations[i+1].nil? }
      end
    end
    alchemy_data = {nodes: nodes, edges: edges}
    alchemy_data.to_json
  end

end
