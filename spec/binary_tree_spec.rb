require 'spec_helper'

describe BinaryTree do

  before do
    @tree = BinaryTree.new
  end

  describe "Insertion" do
    before do
      %w(Dan Barry Ted Daniel Alice Andy Sally).each do |name|
        @tree.insert_data(name)
      end
    end

    it "should insert nodes in alphabetical order" do
      @tree.root.data.should eq("Dan")
      @tree.root.left.data.should eq("Barry")
      @tree.root.right.data.should eq("Ted")
      @tree.root.right.left.data.should eq("Daniel")
      @tree.root.left.left.data.should eq("Alice")
      @tree.root.left.left.right.data.should eq("Andy")
      @tree.root.right.left.right.data.should eq("Sally")
    end

    describe "Searching" do
      before do
        pending "TODO add a searching function..."
      end

      it "should count the number of nodes" do
        @tree.nodes.length.should eq(7)
      end

      it "should count the number of leaf nodes" do
        @tree.leaf_nodes.should eq(2)
      end

      it "should find a Node by name" do
        @tree.include?('Sally').should be_true
      end

      it "should return the node with a given name" do
        @tree.find("Ted").should_not be_nil
        @tree.find("Ted").left.data.should eq("Daniel")
        @tree.find("Ted").left.right.data.should eq("Sally")
      end

      it "should return nodes having data of length greater than 3" do
        @tree.search do |node|
          node.data.length > 3
        end.should eq(["Alice", "Andy", "Barry", "Daniel", "Sally"])
      end

      it "should return nodes having exactly two children" do
        @tree.search do |node|
          node.left && node.right
        end.should eq(["Dan"])
      end
    end

    describe "Deletion" do
      before do
        pending "TODO add a delete function..."
        @tree.delete("Ted")
      end

      it "should remove a node" do
        @tree.include?('Ted').should be_false
      end

      it "should replace the node with its left child" do
        @tree.root.right.data.should eq("Daniel")
        @tree.root.right.right.data.should eq("Sally")
      end
    end
  end

end