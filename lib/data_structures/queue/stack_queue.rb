require_relative '../stack/stack'

class StackQueue

  def initialize
    @in = Stack.new
    @out = Stack.new
  end

  def empty?
    @in.empty? && @out.empty?
  end

  def size
    @in.size + @out.size
  end

  def enqueue(val)
    @in.push(val)
  end

  def dequeue
    move_in_to_out if @out.empty?
    @out.pop
  end

  private

  def move_in_to_out
    @out.push(@in.pop) until @in.empty?
  end

end
