class Edge
  attr_accessor :from
  attr_accessor :to
  attr_accessor :cost

  def initialize(from, to, cost)
    self.from, self.to, self.cost = from, to, cost
  end
end