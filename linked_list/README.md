# Linked Lists

A linked list is an elementary data structure that allows developers to append,
insert, find, and remove arbitrary items. "List" implies an ordering--items are
in insertion order (if an item is inserted later, it occurs later in the list).

Each item in a list is represented by a Node. We call the list "linked" because
the Nodes are linked to one another.

A Node has a value and a next Node.

A new linked list has no Nodes.

Example:
```
list = LinkedList.new

list.append(1)  # inserts the integer 1
list.append(2)  # inserts 2 after 1
list.append("dog")  # inserts the string "dog" after 2
list.append([3, 4]) # inserts the array [3, 4] after "dog"
list.append_after(2, "cat")  # inserts "cat" after 2

list.find("dog")  # returns the Node with the value "dog"
list.find(17)  # returns nil

list.remove("dog")  # removes "dog" from the LinkedList
```
