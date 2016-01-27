require_relative 'node'

class Graph
  attr_reader :head

  def initialize
    @head = GraphNode.new
  end
end
