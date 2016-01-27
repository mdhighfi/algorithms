require_relative 'snode'

class SList
  attr_accessor :head

  def initialize(arr)
    @head = (arr.empty? ? nil : SNode.new(arr.first))
    end
  end

  def push(val)
    last = last_node
    if empty?
      head = SNode.new(val)
    else
      last.next = SNode.new(val)
    end
  end

  def pop(val)

  end

  def shift(val)
  end

  def unshift(val)
  end

  private

  def last_node
    if head.nil?
      nil
    else
      curr = head
      until curr.next.nil?
        curr = curr.next
      end
      curr
    end
  end

  def empty?
    head.nil?
  end

end
