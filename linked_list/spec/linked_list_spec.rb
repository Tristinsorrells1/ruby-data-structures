# spec/linked_list_spec.rb
require 'linked_list'

describe LinkedList do

  describe ".initialize" do
    it "creates a LinkedList with a nil head" do
      list = LinkedList.new
      expect(list.head).to eql(nil)
    end
  end

  describe ".add_front" do
    context "given a value" do
      it "inserts the value at the front of list" do
        list = LinkedList.new
        list.add_front(0)
        expect(list.items).to eql([0])

        list.add_front(1)
        expect(list.items).to eql([1, 0])

        list.add_front("dog")
        expect(list.items).to eql(["dog", 1, 0])
      end
    end
  end

  describe ".add_end" do
    context "given a value" do
      it "inserts the value at the end of list" do
        list = LinkedList.new
        list.add_end(0)
        expect(list.items).to eql([0])

        list.add_end(1)
        expect(list.items).to eql([0, 1])

        list.add_end("dog")
        expect(list.items).to eql([0, 1, "dog"])
      end
    end
  end

  describe ".find" do
    context "given a list [0, 1, 2, 3] and target 2" do
      it "returns the Node with value 2" do
        list = LinkedList.new
        list.add_front(3)
        list.add_front(2)
        list.add_front(1)
        list.add_front(0)
        found = list.find(2)
        expect(found.value).to eql(2)
      end
    end
  end

  describe ".remove" do
    context "given a list [0, 1] and target 1" do
      it "removes 1, resulting in the list [0]" do
        list = LinkedList.new
        list.add_front(1)
        list.add_front(0)
        list.remove(1)
        expect(list.items).to eql([0])
      end
    end
  end
end
