# Linked Lists

A linked list is an elementary data structure that allows developers to insert,
find, and remove arbitrary items.

Each item in a list is represented by a Node. We call the list "linked" because
the Nodes are linked to one another. If we represent a Node with a value x as
`N(x)` and a link from Node A to Node B as `A -> B`, we can represent a list
whose values are successively 1, 2, and 3 as follows:

```
N(1) -> N(2) -> N(3) -> nil
```

A new linked list has no Nodes.

Sample code:

```
list = LinkedList.new  # creates an empty list

list.add_front(1)      # inserts the integer 1 to the front of the list

list.add_front(0)      # inserts 0 to the front

list.add_end(2)        # inserts 2 to the end

list.find(2)           # returns the Node with the value 2

list.find(17)          # returns nil

list.remove(2)         # removes the Node with the value 2

```

## Getting started

Clone this repository. Using SSH:

```
git clone git@github.com:adamvinueza/ruby-data-structures.git
```

Using HTTPS:

```
git clone https://github.com/adamvinueza/ruby-data-structures.git
```

To run the tests, from the subdirectory `linked_list` in this repository run:

```
bundle install --path .bundle
bundle exec rspec
```

To generate the documentation, from the subdirectory `linked_list` in this
repository run:

```
rdoc
```

## Algorithmic Complexity

Algorithmic complexity is measured using what's called "O-notation". The "O"
stands for _order_ (of magnitude). If we have a function _f(n)_, the notation
_O(f(n))_ means that as _n_ gets larger, the running time of the function is
proportional to at most _f(n)_. These are the most important cases, with
algorithms exemplifying those running times in parentheses:

- O(1): constant running time ([access element in array](https://www.geeksforgeeks.org/introduction-to-arrays/))
- O(log n): logarithmic ([binary search](https://www.geeksforgeeks.org/binary-search/))
- O(n): linear ([string comparison](https://www.geeksforgeeks.org/quick-way-check-characters-string/))
- O(n * log n): _n log n_ ([mergesort](https://www.geeksforgeeks.org/merge-sort/))
- O(n^2): quadratic ([simple sorting methods](https://www.geeksforgeeks.org/selection-sort/))
- O(n^3): cubic ([matrix multiplication](https://www.geeksforgeeks.org/c-program-multiply-two-matrices/))
- O(2^n): exponential ([set partitioning](https://www.geeksforgeeks.org/partition-problem-dp-18/))

This is the algorithmic complexity of operations on linked lists:

- add\_front is O(1)
- add\_end is O(n)
- find is O(n)
- remove is O(n)


## Exercises to think about

### LinkedList.add\_after

Here is a section to add to [the spec for linked lists](spec/linked_list_spec.rb):

```ruby
  describe ".add_after" do
    context "given a target and a value" do
      it "inserts the value after the target" do
        list = LinkedList.new
        list.add_front(2)
        list.add_front(0)
        list.add_after(0, 1)
        expect(list.items).to eql([0, 1, 2])
      end
    end
  end
```

Use the `LinkedList.find` method to implment `add_after`.


### Doubly linked lists

Suppose we modified the `Node` class to have a `previous` accessor: it behaves
just like the `next` accessor, except it refers to the `Node` that comes _before_
its `Node`. Here is its implementation of `Node`:

```
class Node
  attr_reader value
  attr_accessor next
  attr_accessor previous

  def initialize value
    @value = value
    @next = nil
    @previous = nil
  end
end
```

Implement the `LinkedList` class's `add_front`, `add_end`, `find`, and `remove`
methods using this `Node` class. Try to implement `remove` using `find`.

### Stacks

A _stack_ is a list-like data structure with the following methods:

- `push` places an item onto the stack
- `pop` removes _the last pushed item_ from the stack and returns it

Implement `push` and `pop` using methods already implemented.

Explain why `pop` should be O(1) while `remove` is O(n).
