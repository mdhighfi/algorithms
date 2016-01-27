require_relative 'snode'

class SList
  attr_accessor :head

  def initialize(arr)
    @head = (arr.empty? ? nil : SNode.new(arr.first))
    end
  end
end
