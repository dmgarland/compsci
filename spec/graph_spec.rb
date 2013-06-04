require 'spec_helper'

describe Graph do

  before do
    @graph = Graph.new

    @sfo = @graph.add_vertex("San Francisco")
    @lax = @graph.add_vertex("Los Angeles")
    @phx = @graph.add_vertex("Phoenix")
    @den = @graph.add_vertex("Denver")
    @ord = @graph.add_vertex("Chicago")
    @iah = @graph.add_vertex("Houston")
    @jfk = @graph.add_vertex("New York")

    @graph.add_edge(@sfo, @lax, 381)
    @graph.add_edge(@sfo, @phx, 754)
    @graph.add_edge(@sfo, @ord, 2132)
    @graph.add_edge(@lax, @phx, 373)
    @graph.add_edge(@phx, @den, 862)
    @graph.add_edge(@phx, @iah, 1174)
    @graph.add_edge(@iah, @den, 1120)
    @graph.add_edge(@den, @ord, 1004)
    @graph.add_edge(@iah, @jfk, 1627)
    @graph.add_edge(@ord, @jfk, 790)
    @graph.add_edge(@den, @jfk, 1778)

    @graph.to_png
  end

  it "should know how many vertices there are" do
    @graph.vertices.length.should eq(7)
  end

  it "should know which cities are adjacent to each other" do
    @sfo.adjacent?(@lax).should be_true
    @sfo.adjacent?(@phx).should be_true
    @sfo.adjacent?(@jfk).should be_false
    @lax.adjacent?(@sfo).should be_true
    @phx.adjacent?(@sfo).should be_true
  end



end