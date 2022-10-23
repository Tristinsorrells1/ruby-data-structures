# lib/node.rb

##
# Represents a node in a singly linked list.

class Node
  attr_reader :value
  attr_accessor :next

  ##
  # Creates a Node with the specified value.

  def initialize value
    @value = value
    @next = nil
  end
end
