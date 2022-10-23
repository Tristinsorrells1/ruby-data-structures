# lib/linked_list.rb
require 'node'

##
# Represents a singly linked list.

class LinkedList
  attr_reader :head

  ##
  # Creates an empty linked list.

  def initialize
    @head = nil
  end

  ##
  # Adds a Node with the specified +value+ to the front of the list.

  def add_front value
    new_node = Node.new value
    if @head
      new_node.next = @head
      @head = new_node
    else
      @head = new_node
    end
  end

  ##
  # Adds a Node with the specified +value+ to the end of the list.

  def add_end value
    new_node = Node.new value
    if @head == nil
      @head = new_node
    else
      node = @head
      while node.next
        node = node.next
      end
      node.next = new_node
    end
  end

  ##
  # Returns the Node with the specified +target+ value, or nil if not found.

  def find target
    node = @head
    while node
      if node.value == target
        return node
      end
      node = node.next
    end
    return nil
  end

  ##
  # Removes the Node with the specified +target+ value and returns true;
  # returns false if not found.
  #
  # To remove a Node N, we set its previous Node's next value to N's next
  # value (or we set @head to @head.next). This is why we look at node.next;
  # Nodes have no property named "previous".

  def remove target
    if @head
      if @head.value == target
        @head = @head.next
        return true
      else
        node = @head
        while node.next
          if node.next.value == target
            node.next = node.next.next
            return true
          end
          node = node.next
        end
      end
    end
    return false
  end

  ##
  # Returns an Array containing the values in the list, in list order.

  def items
    values = Array.new
    node = @head
    while node
      values << node.value
      node = node.next
    end
    return values
  end
end
