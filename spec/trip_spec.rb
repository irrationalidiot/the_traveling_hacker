require 'trip'

describe Trip do
  before(:each) do
    @trip = Trip.new(["Daytona, FL", "Raleigh, NC", "Memphis, TN"])
  end
  
  it "should have stops" do
    @trip.should respond_to(:stops)
  end
  
  it "should have three stops" do
    @trip.should have(3).stops
  end
  
  it "should add new stops" do
    @trip.add_stop("Dallas, TX")
    @trip.stops.size.should == 4
  end
  
  it "raises an error when an invalid stop is added" do
    lambda { @trip.add_stop("NotARealStop") }.should raise_exception(Trip::InvalidStop)
  end
  
  it "should have legs" do
    @trip.should respond_to(:legs)
  end
  
  it "should have two legs" do
    @trip.should have(2).legs
  end
  
  after(:each) do
    @trip = nil
  end
end
