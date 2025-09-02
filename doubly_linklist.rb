
class Node
  attr_accessor :prev, :next, :val

  def initialize(val, prev =nil,  _next= nil)
    @prev= prev
    @val = val
    @next = _next
  end
end

class DoublyList
  attr_accessor :head, :tail
  def initialize
    @head = @tail = nil
  end
  
  def add_element(v)
    if  @head.nil?
      @tail = @head = Node.new(v)
    else
      new_node = Node.new(v, @tail)
      @tail.next = new_node
      @tails  = new_node
    end
  end
  
  def print_element
    current = @head
      while (current != nil)
        p "#{current.val} ->"
        current = current.next 
      end
      p 'nil'
  end
  
end


dl = DoublyList.new

dl.add_element(1)
dl.add_element(2)
dl.add_element(3)
dl.print_element

