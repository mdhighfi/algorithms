require_relative '../stack/stack'

class StackQueue

  def initialize
    @in = Stack.new
    @out = Stack.new
  end

  def empty?
    self.in.empty? && self.out.empty?
  end

  def size
    self.in.size + self.out.size
  end

  def enqueue(val)
    self.in.push(val)
  end

  def dequeue
    move_in_to_out if self.out.empty?
    self.out.pop
  end

  private

  def move_in_to_out
    self.out.push(self.in.pop) until self.in.empty?
  end

end
