class Stack
  attr_reader :store, :top

  def initialize
    @store = []
  end

  def push(val)
    self.store.push(val)
    val
  end

  def pop
    self.store.pop
  end

  def size
    self.store.length
  end

  def empty?
    size.zero?
  end
end
