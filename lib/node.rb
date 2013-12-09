class Node
  attr_accessor :data
  attr_accessor :left
  attr_accessor :right

  def initialize(data)
    self.data = data
  end

  def is_leaf?
    left.nil? && right.nil?
  end

  def ==(node)
    self.data == node.data
  end
end