require_relative 'dnode'

class DList
  attr_accessor :head

  def initialize(arr)
    @head = (arr.empty? ? nil : DNode.new(arr.first))
    end
  end
end
