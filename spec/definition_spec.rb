require('rspec')
require('definition')
require('word')

describe(Definition) do
  # # before() do
  # #   Definition.clear()
  # end

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

end
