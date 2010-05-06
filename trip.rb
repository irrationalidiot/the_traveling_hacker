class Trip
  attr_reader :stops, :legs
  
  def initialize(stops = [])
    @stops = stops
    @legs = create_legs
    @valid_stops = /^\w+,\s\w{2}$/
  end
  
  def add_stop(stop)
    if stop =~ @valid_stops
      @stops.push(stop)
    else
      raise InvalidStop
    end
  end
  
  def create_legs
    @stops.empty? ? Array.new : Array.new(@stops.size - 1)
  end
  
  class InvalidStop < Exception; end
end
