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
    # 1. Assign a tentative distance value of zero to the starting vertex,
    # infinity to every other node

    # 2. Mark all vertices unvisited

    # 3. Create a set of unvisited vertices called the unvisited set, consisting
    # of all the vertices except the initial vertex

    while(!to_node.visited) do
      # 4. a) For the current vertex, find all its adjacent, unvisited vertices

      # 4. b) calculate their tentative distances, which is the sum of the
      # current node's distance with the edge's cost

      # 5. If the tentative distance of the neighbouring vertex is less than the
      # previously recorded tentative distance, then overwrite it.

      # 6. Once all distances are calculated, mark the current vertex as visited
      # and remove it from the unvisited set.

      # 7. Replace the current node with the unvisited vertex having the
      # smallest tentative distance, then go back to step 3.

      break # Remove me when you're ready!
    end

    # 8. Once we've marked the destination vertex as visted we've found the
    # shortest path! Work backwards from the to_node and find the nodes where
    # the current nodes distance less the edges cost is the shortest distance
    # that we've calculated already.
    shortest_path = []

    shortest_path
  end
end