# lib/linked_list.rb
require 'node'

##
# Represents a linked list.

class LinkedList
  attr_reader :head

  ##
  # Creates an empty LinkedList.

  def initialize
    @head = nil
  end

  ##
  # Appends the specified +value+ to this LinkedList.

  def append(value)
    if @head == nil
      @head = Node.new(value)
    else
      node = @head
      while node.next != nil
        node = node.next
      end
      node.next = Node.new(value)
    end
  end

  ##
  # Appends the specified +value+ to this LinkedList after the Node with the 
  # value +target+.

  def append_after(target, value)
    found = find(target)
    if found
      node = Node.new(value)
      node.next = found.next
      found.next = node
    end
  end

  ##
  # Returns the Node with the value +target+, or nil if not found.

  def find(target)
    node = @head
    while node
      if target == node.value
        return node
      else
        node = node.next
      end
    end
    nil
  end

  ##
  # Removes the Node with the value +target+.

  def remove(target)
    if @head.value == target
      @head = @head.next
    else
      node = @head
      while node
        if node.next
          if node.next.value == target
            node.next = node.next.next
            return
          end
        end
        node = node.next
      end
    end
  end

  ##
  # Returns the values of each Node, as an array.

  def items
    values = Array.new
    node = @head
    while node != nil
      values << node.value
      node = node.next
    end
    return values
  end
end
