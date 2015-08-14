require ('rspec')
require('word')

describe(Word) do
  describe ('#word') do
    it("returns the word") do
    test_word = Word.new({:word => "Banana"})
    expect(test_word.word()).to(eq("Banana"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("pushes a word to an array of saved words") do
      test_word = Word.new({:word => "Banana"})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it("empties out the array") do
      test_word = Word.new({:word => "Banana"})
      test_word.save()
      expect(Word.clear()).to(eq([]))
    end
  end

end
