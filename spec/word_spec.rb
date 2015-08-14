require ('rspec')
require('word')

describe(Word) do
  describe ('#word') do
    it("returns the word") do
    test_word = Word.new({:word => "Banana"})
    expect(test_word.word()).to(eq("Banana"))
    end
  end


end
