class Game

  attr_reader :player_1, :player_2, :turn, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = player_1
    @opponent = player_2
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_roles
    current_turn = turn
    change_turn
    change_opponent(current_turn)
  end

  private

  def change_turn
    @turn = opponent
  end

  def change_opponent(current_turn)
    @opponent = current_turn
  end

end
