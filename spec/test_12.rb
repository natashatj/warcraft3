require_relative 'spec_helper'

#unit dies if health points < 0
#living unit cannot attack a unit that is dead and vice versa
describe Unit do
  before :each do
    @unit = Unit.new(30, 5)
  end
  describe '#dead?' do
    it "should return true if unit's health points are at 0" do
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.dead?).to be true
    end

    it "should return false if unit's health points are above 0" do
      expect(@unit.dead?).to be false 
    end
  end
  describe '#attack!' do
    it "should not attack a dead unit" do
      @dead_unit = Unit.new(0, 5)
    expect(@unit.attack!(@dead_unit)).to be false 
    end
  end
end
