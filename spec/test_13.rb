require_relative 'spec_helper'
#SiegeEngine of Unit 
#SiegeEngine requires lumber when built by a Barracks
#Barracks have lumber ressource (500)


#SiegeEngine can attack barracks but can't attack units
#SiegeEngine attacks do 2x damage against barracks
#SiegeEngine can attack other SiegeEngine (no units (like peasants and footman))
#siege Engine's initialized with attack power(50) health pints (400)
#costs 200 gold, 60 lumber, 3 food 

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  it "starts off with 500 lumber resources" do
    expect(@barracks.lumber).to eq(500)
  end
end

describe SiegeEngine do

  before :each do 
    @siege_engine = SiegeEngine.new
  end

  it "should be a Unit" do
    expect(@siege_engine).to be_an_instance_of(SiegeEngine)
    # But should also be a Unit
    expect(@siege_engine).to be_a(Unit)
  end

  it "has and knows its HP (health points)" do
    expect(@siege_engine.health_points).to eq(400)
  end

  it "has and knows its AP (attack power)" do
    expect(@siege_engine.attack_power).to eq(50)
  end
describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#make_siege_engine" do

    it "costs 200 gold" do
      @barracks.make_siege_engine
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 3 food" do
      @barracks.make_siege_engine
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "costs 60 lumber" do
      @barracks.make_siege_engine
      expect(@barracks.lumber).to eq(440) # starts at 500
    end

    it "produces a siege_engine unit" do
      siege_engine = @barracks.make_siege_engine
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end
  end
  describe "#attack!" do

    it "should deal 100 (AP) damage to the barrack" do
      barrack = Barracks.new
      expect(barrack).to receive(:damage).with(100)
      @siege_engine.attack!(barrack)
    end

    it "should deal 50 (AP) damage to the other siege_engine" do
      siege_engine = SiegeEngine.new
      expect(siege_engine).to receive(:damage).with(50)
      @siege_engine.attack!(siege_engine)
    end

    it "should not deal (AP) damage to other units" do
      unit = Unit.new
      expect(unit).to receive(:damage).with(0)
      @siege_engine.attack!(unit)
    end
  end
end


   
  




