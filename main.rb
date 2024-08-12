require_relative 'lib/graph'

def knight_moves(starting_square, ending_square)
  moves = -1
  shortest_path = []
  graph = Graph.new(starting_square, ending_square).build_graph

  current_square = graph[-1]

  until current_square.nil?
    shortest_path.unshift(current_square.value)
    moves += 1

    current_square = current_square.last_move
  end

  puts "You made it in #{moves} moves! Here's your path:"
  shortest_path.each do |move|
    p move
  end
end

knight_moves([0, 0], [7, 7])
