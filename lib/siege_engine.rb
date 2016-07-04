class SiegeEngine < Unit
  def initialize
    super(400, 50)
  end
  def attack!(target)
    if target.is_a?Barracks
      target.damage(100)
    elsif target.is_a?SiegeEngine
      target.damage(@attack_power)
    elsif target.is_a?Unit
      target.damage(0)
    end
  end
end