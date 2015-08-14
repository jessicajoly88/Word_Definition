require('rspec')
require('definition')
require('word')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#definition') do
    it("returns a definition of a word") do
      test_definition = Definition.new({:word => "Banana", :definition => "A banana is an edible fruit that comes prepackaged in its own yellow jacket."})
      expect(test_definition.definition()).to(eq("A banana is an edible fruit that comes prepackaged in its own yellow jacket."))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves the given definition to a word in the list") do
      test_definition = Definition.new({:word => "Banana", :definition => "A banana is an edible fruit that comes prepackaged in its own yellow jacket."})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe(".clear") do
    it("empties the array of saved definitions") do
      test_definition = Definition.new({:word => "Banana", :definition => "A banana is an edible fruit that comes prepackaged in its own yellow jacket."})
      test_definition.save()
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the definition") do
      test_definition = Definition.new({:word => "Banana", :definition => "A banana is an edible fruit that comes prepackaged in its own yellow jacket."})
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("finds a definition based on its id") do
      test_definition = Definition.new ({:word => "Banana", :definition => "A banana is an edible fruit that comes prepackaged in its own yellow jacket."})
      test_definition.save()
      test_definition2 = Definition.new ({:word => "Watermelon", :definition => "A watermelon is juicy fruit that is fun to eat."})
      test_definition2.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end

  describe("#definition") do
    it("initially returns an empty array of definitions for a word") do
      test_definition = Definition.new ({:word => "Banana", :definition => "A banana is an edible fruit that comes prepackaged in its own yellow jacket."})
      expect(test_definition.all_definitions()).to(eq([]))
    end
  end


end
