class Heap
  def initialize(arr = [])
    @store = []
    arr.each { |el| insert(el) }
  end

  def min
    @store.first
  end

  def pop
    min = self.min
    return nil if @store.empty?
    return @store.pop if @store.length == 1
    @store[0] = @store.pop
    heapify_down!
    min
  end

  def insert(val)
    @store.push(val)
    heapify_up!
    val
  end

  private

  def children(parent_idx)
    [parent_idx*2 + 1, parent_idx*2 + 2]
  end

  def parent(child_idx)
    (child - 1) / 2
  end

  def heapify_up!
    current = @store.length - 1
    while current > 0
      par = parent(current)
      if @store[par] > @store[current]
        swap!(par, current)
        current = par
      else
        break
      end
    end
  end

  def heapify_down!
    current = 0
    while current < @store.length
      children = self.children(current).select! { |n| n < @store.length }
      break if children.empty?
      min_child = children.min_by { |n| @store[n] }
      if @store[current] > @store[min_child]
        swap!(current, min_child)
        current = min_child
      else
        break
      end
    end
  end

  def swap!(idx1, idx2)
    @store[idx1], @store[idx2] = @store[idx2], @store[idx1]
  end
end

# min_heap = Heap.new
