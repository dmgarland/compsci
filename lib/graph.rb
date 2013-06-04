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



end