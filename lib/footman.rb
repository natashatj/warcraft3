# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
attr_accessor :health_points, :attack_power
  def initialize(health_points=60, attack_power=10)
    @health_points = health_points
    @attack_power = attack_power

    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end
  def attack!(target)
    target.damage(@attack_power)
  end
  def damage(attack_power)
    @health_points -= attack_power
  end 
end
