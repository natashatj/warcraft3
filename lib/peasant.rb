class Peasant < Unit
  def initialize(health_points=35, attack_power=0)
    @attack_power = attack_power
    @health_points = health_points
  end
end