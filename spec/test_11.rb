require_relative 'spec_helper'

describe Barracks do
 
 before :each do
    @barracks = Barracks.new
  end
  #barracks initially has 500 health points
   it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end
end

  #barracks can be attacked by other units
  #footman does only half of his attack power(10) as damage to a barrack
describe Footman do

  before :each do
    @footman = Footman.new
  end

  describe "#attack!" do
    it "should deal half attack_power (AP) damage to the barrack" do
      barrack = Barracks.new
      expect(barrack).to receive(:damage).with((10/2).to_f.ceil)
      #convert integers to float before ciel method inside of attack
      @footman.attack!(barrack)
    end
  end
end
#check if unit is a footman 
#damage amount should be an integer, but the ceiling (ceil) of the division should be used as the resulting amount 