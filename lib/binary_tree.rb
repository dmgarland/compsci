class BinaryTree
  attr_accessor :root

  def insert_data(data)
    self.root = insert(data)
  end

  def insert(data, node = self.root)
    if node.nil?
      Node.new(data)
    else
      if data < node.data
        node.left = insert(data, node.left)
      else
        node.right = insert(data, node.right)
      end
      node
    end
  end

  def search
  end

  def nodes
  end
end