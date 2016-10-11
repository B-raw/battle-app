class Player
  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = 60
  end

  def reduce_health
    @health -= 10
  end
end
