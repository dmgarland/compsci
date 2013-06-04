require 'graphable'

class Graph
  include Graphable
  attr_accessor :vertices

  def initialize
    self.vertices = Set.new
  end

  def add_vertex(data)
    v = Vertex.new(data)
    self.vertices.add(v)
    v
  end

  def add_edge(from_node, to_node, cost)
    edge = Edge.new(from_node, to_node, cost)
    from_node.edges[to_node.data] = edge

    edge = Edge.new(to_node, from_node, cost)
    to_node.edges[from_node.data] = edge
  end

  def shortest_path(from_node, to_node)
    mark_unvisted
    current = from_node
    current.distance = 0
    shortest_path = []
    unvisted = vertices.clone.delete(current)

    while(!to_node.visited) do
      # Do stuff
      break
    end

    shortest_path
  end

  private
  def mark_unvisted
    self.vertices.each {|v| v.visited = false; v.distance = 1e99 }
  end

end