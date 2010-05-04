require 'trip.rb'

describe Trip, "#stops" do
  before(:each) do
    @trip = Trip.new
  end
  
  it "accepts many stops" do
    @trip.stops.size.should == 0
    ["Daytona, FL", "Raleigh, NC", "Memphis, TN"].each do |stop|
      @trip.add_stop(stop)
    end
    @trip.stops.size.should == 3
  end
  
  it "raises an error when an invalid stop is added" do
    lambda { @trip.add_stop("NotARealStop") }.should raise_exception(InvalidStop)
  end
end
