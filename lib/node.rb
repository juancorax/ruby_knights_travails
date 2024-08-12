class Node
  def initialize(value, last_move = nil)
    @value = value
    @last_move = last_move
    @possible_moves = nil
  end

  attr_accessor :value, :last_move, :possible_moves
end
