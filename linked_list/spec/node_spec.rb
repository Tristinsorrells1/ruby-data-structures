# spec/node_spec.rb
require 'node'

describe Node do
  describe ".initialize" do
    context "given a Node.new with argument 17" do
      it "creates a Node with value 17 and nil next" do
        node = Node.new(17)
        expect(node.value).to eql 17
        expect(node.next).to eql nil
      end
    end
  end

  describe ".next" do
    context "given a Node and another Node assigned to its next" do
      it "has a non-nil next" do
        node = Node.new 17
        node.next = Node.new 20
        expect(node.next).to_not eql nil
      end
    end
  end
end
