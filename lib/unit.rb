class Unit
  attr_reader :health_points, :attack_power
  def initialize(health_points=60, attack_power=10)
    @health_points = health_points
    @attack_power = attack_power
  end
  def damage(damage)
    @health_points -= damage 
  end
  def attack!(unit)
    if unit.dead?
      false
    else
    unit.damage(3)
    end
  end

  def dead?
    if self.health_points == 0
      true
    else
      false
    end
  end
end