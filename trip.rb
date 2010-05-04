class Trip
  attr_reader :stops
  
  def initialize
    @stops = []
    @valid_stops = ["Daytona, FL", "Raleigh, NC", "Memphis, TN"]
  end
  
  def add_stop(stop)
    if @valid_stops.include?(stop)
      @stops.push(stop)
    else
      raise InvalidStop
    end
  end
end


class InvalidStop < Exception
  
end
