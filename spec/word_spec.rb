require ('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear
  end

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

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new({:word => "Banana"})
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it("returns the word by its id number") do
      test_word = Word.new({:word => "Banana"})
      test_word.save()
      test_word2 = Word.new({:word => "Apple"})
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe("add_definition") do
    it ("adds a definition to a word") do
      test_word = Word.new({:word => "Watermelon"})
        test_definition = Definition.new({:definition => "A tropical fruit"})
        test_word.add_definition(test_definition)
        expect(test_word.definitions).to(eq([test_definition]))
      end
    end

end
