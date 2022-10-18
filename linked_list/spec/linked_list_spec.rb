# spec/linked_list_spec.rb
require 'linked_list'

describe LinkedList do

  describe ".initialize" do
    it "creates a LinkedList with a nil head" do
      list = LinkedList.new
      expect(list.head).to eql(nil)
    end
  end

  describe ".append" do
    context "given a value" do
      it "appends the value to the end of list" do
        list = LinkedList.new
        list.append(0)
        expect(list.items).to eql([0])

        list.append(1)
        expect(list.items).to eql([0, 1])

        list.append("dog")
        expect(list.items).to eql([0, 1, "dog"])
      end
    end
  end

  describe ".append_after" do
    context "given a list [0, 1] and target 0 and value 'dog'" do
      it "inserts 'dog' directly after 0" do
        list = LinkedList.new
        list.append(0)
        list.append(1)
        list.append_after(0, 'dog')
        expect(list.items).to eql([0, 'dog', 1])
      end
    end

    context "given a list [0, 1] and target 1 and value 'dog'" do
      it "puts 'dog' at the end of the list" do
        list = LinkedList.new
        list.append(0)
        list.append(1)
        list.append_after(1, "dog")
        expect(list.items).to eql([0, 1, "dog"])
      end
    end
  end

  describe ".remove" do
    context "given a list [0, 1] and target 1" do
      it "removes 1, resulting in the list [0]" do
        list = LinkedList.new
        list.append(0)
        list.append(1)
        list.remove(1)
        expect(list.items).to eql([0])
      end
    end
  end

  describe ".find" do
    context "given a list [0, 1, 2, 3, 4] and target 2" do
      it "returns the Node with value 2" do
        list = LinkedList.new
        list.append(0)
        list.append(1)
        list.append(2)
        list.append(3)
        list.append(4)
        found = list.find(2)
        expect(found.value).to eql(2)
      end
    end
  end
end
