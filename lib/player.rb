class Player
  attr_reader :name, :health

  DEFAULT_HEALTH = 60

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def reduce_health
    @health -= 10
  end
end
