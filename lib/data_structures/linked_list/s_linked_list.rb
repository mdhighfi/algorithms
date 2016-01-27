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
      self.head = SNode.new(val)
    else
      last.next = SNode.new(val)
    end
  end

  def pop
    pen = penultimate_node
    if empty?       # 0 elements
      nil
    elsif pen.nil?  # 1 element
      val = head.val
      self.head = nil
      val
    else            # >1 elements
      val = pen.next.val
      pen.next = nil
      val
    end
  end

  def shift
    return nil if empty?
    val = head.val
    self.head = head.next
  end

  def unshift(val)
    old_head = head
    self.head = SNode.new(val)
    self.head.next = old_head
    val
  end

  def length
    curr = head
    count = 0
    until curr.nil?
      curr = curr.next
      count += 1
    end
    count
  end

  def find(val)
    curr = head
    idx = 0
    until curr.nil? || curr.val == val
      curr = curr.next
      idx += 1
    end
    return nil if curr.nil?
    idx
  end

  def to_s

  end

  private

  def penultimate_node
    curr = head
    if curr.nil? || curr.next.nil?
      nil
    else
      peek_ahead = curr.next.next
      until peek_ahead.nil?
        curr = curr.next
        peek_ahead = peek_ahead.next
      end
      curr
    end
  end

  def last_node
    pen = penultimate_node
    if pen.nil?
      head
    else
      pen.next
    end
  end

  def empty?
    self.head.nil?
  end

  def traverse(&prc)
    prc ||= Proc.new { |x| puts x.val }

    curr = head
    until curr.nil?
      prc.call(curr)
      curr = curr.next
    end
    nil
  end

end
