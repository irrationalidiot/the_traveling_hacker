require 'leg'

describe Leg do
  it "should have an origin" do
    subject.should respond_to(:origin)
  end
  
  it "should have a destination" do
    subject.should respond_to(:destination)
  end
  
  it "should have a distance" do
    subject.should respond_to(:distance)
  end
end
