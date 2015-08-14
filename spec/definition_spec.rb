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
end
