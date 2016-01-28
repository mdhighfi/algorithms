class BinTreeNode < Node
  attr_accessor :value, :parent, :left, :right

  def initialize(val, parent)
    @val = val
    @parent = parent
    @left, @right = nil, nil
  end
end
