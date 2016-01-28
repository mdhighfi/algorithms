class BinTreeNode < Node
  attr_reader :value, :parent, :left, :right

  def initialize(val, parent)
    @val = val
    @parent = parent
    @left, @right = nil, nil
  end
end
