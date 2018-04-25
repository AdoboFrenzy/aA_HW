require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) {Dessert.new("Ice Cream", 10, "alfred")}
  let(:chef) { double(:bake => self) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("Ice Cream")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("Chocolate", "100", "Bill")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("sugar")
      expect(dessert.ingredients).to eq(["sugar"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("cinnamon")
      dessert.add_ingredient("flour")
      dessert.add_ingredient("butter")
      dessert.add_ingredient("syrup")

      before_mix = dessert.ingredients.dup
      after_mix = dessert.mix!

      expect(after_mix).not_to eq(before_mix)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(5)
      expect(dessert.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(15)}.to raise_error(StandardError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      cap_name = dessert.chef.capitalize
      msg = dessert.serve
    expect(msg.include?(cap_name)).to eq(true)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do

      expect(chef.bake).to eq(self)
    end
  end
end
