# lib/node.rb

##
# Represents a Node, in this case for a linked list.

class Node
  attr_accessor :value
  attr_accessor :next

  ##
  # Creates a Node with the specified +value+.

  def initialize(value)
    @value = value
    @next = nil
  end
end
