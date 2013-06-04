class Vertex

  attr_accessor :data
  attr_accessor :edges

  def initialize(data)
    self.data = data
    self.edges = Hash.new
  end

  def adjacent?(to_node)
    edges.include?(to_node.data)
  end

end