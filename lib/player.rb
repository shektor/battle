class Player

  INITIAL_HP = 100
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = INITIAL_HP
  end

  def reduce_hp
    @hp -= 10
  end
end
